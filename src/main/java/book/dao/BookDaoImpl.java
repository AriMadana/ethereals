package book.dao;

import java.util.List;

import book.model.Book;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class BookDaoImpl{

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void saveBook(Book book) {
		getSession().merge(book);
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Book> listBooks() {		
		return getSession().createCriteria(Book.class).list();
	}

	@Transactional
	public Book getBook(Long id) {
		return (Book) getSession().get(Book.class, id);
	}
	
	@Transactional
	public void deleteBook(Long id) {

		Book book = getBook(id);

		if (null != book) {
			getSession().delete(book);
		}
	}

	private Session getSession() {
		Session sess = getSessionFactory().getCurrentSession();
		if (sess == null) {
			sess = getSessionFactory().openSession();
		}
		return sess;
	}

	private SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
