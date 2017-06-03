package com.ctyke.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.ctyke.model.Article;

@Repository("articleDao")
public class ArticleDaoImpl extends AbstractDao<Integer, Article> implements ArticleDao{

	@Override
	public Article findById(int id) {
		return getByKey(id);
	}

	@Override
	public void saveArticle(Article article) {
		System.out.println(article.getUserId());
		persist(article);
		
	}
	
	@Override
	public void deleteArticleById(String id) {
		delete(getByKey(Integer.parseInt(id)));	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> findAllArticle() {
		Criteria criteria = createEntityCriteria();
		return (List<Article>) criteria.list();
	}
	

}
