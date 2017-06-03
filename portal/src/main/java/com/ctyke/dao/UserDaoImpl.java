package com.ctyke.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.ctyke.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao{
	@Override
	public User findById(int id) {
		return getByKey(id);
	}

	@Override
	public void saveUser(User user) {
		persist(user);
	}

	@Override
	public void deleteUserById(int id) {
		delete(getByKey(id));
//		Query query = getSession().createSQLQuery("delete from User where id = :id");
//		query.setString("id", id);
//		query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAllUser() {
		Criteria criteria = createEntityCriteria();
		return (List<User>) criteria.list();
	}

	@Override
	public User findUserByUsername(String username) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("username", username));
		return (User) criteria.uniqueResult();
	}

	@Override
	public boolean isValidUser(String username, String password) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", password));
		criteria.setProjection(Projections.rowCount());
		Integer count = ((Long)criteria.uniqueResult()).intValue();
		return (count>0);
	}
	
	
}
