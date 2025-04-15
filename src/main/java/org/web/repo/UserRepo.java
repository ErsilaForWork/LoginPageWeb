package org.web.repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.web.exceptions.NoSuchUser;
import org.web.exceptions.UserAlreadyExist;
import org.web.exceptions.UserEmailAlreadyExist;
import org.web.model.User;

@Repository
public class UserRepo {
    private static final SessionFactory SF = new Configuration().configure().addAnnotatedClass(User.class).buildSessionFactory();

    private boolean isUserNameExist(String username){
        try(Session session = SF.openSession()){
            String HQL = "from User where username like ?1";
            Query<User> query = session.createQuery(HQL, User.class);
            query.setParameter(1,username);

            return !query.getResultList().isEmpty();
        }
    }

    private boolean isUserEmailExist(String email){
        try(Session session = SF.openSession()){
            String HQL = "from User where email like ?1";
            Query<User> query = session.createQuery(HQL, User.class);
            query.setParameter(1,email);

            return !query.getResultList().isEmpty();
        }
    }

    public void addUser(User user) throws UserAlreadyExist, UserEmailAlreadyExist {
        if(isUserNameExist(user.getUsername())){
            throw new UserAlreadyExist("User already exist!");
        }
        if(isUserEmailExist(user.getEmail())){
            throw new UserEmailAlreadyExist("User with this email alreday exist!");
        }

        try(Session session = SF.openSession()){
            Transaction ts = session.beginTransaction();
            session.persist(user);
            ts.commit();
        }
    }

    public boolean loginUser(String username, String password) throws NoSuchUser {
        try(Session session = SF.openSession()){
            String HQL = "from User where username like ?1";
            Query<User> query = session.createQuery(HQL, User.class);
            query.setParameter(1,username);

            if(query.getResultList().isEmpty())
                throw new NoSuchUser("No such username!");
            return query.getResultList().get(0).getPassword().equals(password);
        }
    }
}
