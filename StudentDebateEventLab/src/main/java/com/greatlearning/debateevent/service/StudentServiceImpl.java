package com.greatlearning.debateevent.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greatlearning.debateevent.entity.Student;

@Repository
public class StudentServiceImpl implements StudentService {

	@Autowired
	private SessionFactory sessionFactory;

	private Session session;

	@Autowired
	public StudentServiceImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
		try {
			this.session = this.sessionFactory.getCurrentSession();
		} catch (HibernateException exptn) {
			this.sessionFactory.openSession();
		}
	}

	@Override
	public List<Student> findAll() {
		Session session = this.sessionFactory.openSession();
		List<Student> list = session.createQuery("from Student").list();
		session.close();
		return list;

	}

	@Override
	public Student findById(long studentId) {
		Session session = this.sessionFactory.openSession();
		Student student = session.get(Student.class, studentId);
		session.close();
		return student;

	}

	@Override
	public void save(Student student) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(student);
		tx.commit();
		session.close();
	}

	@Override
	public void deleteById(long studentId) {
		Session session = this.sessionFactory.openSession();
		Student student = findById(studentId);
		if (student != null) {
			Transaction tx = session.beginTransaction();
			session.delete(student);
			tx.commit();
		}
		session.close();

	}

}
