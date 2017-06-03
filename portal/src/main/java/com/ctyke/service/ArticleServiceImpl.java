package com.ctyke.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ctyke.dao.ArticleDao;
import com.ctyke.model.Article;
import com.ctyke.model.User;

@Service("articleService")
@Transactional
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleDao dao;
	
	@Override
	public Article findById(int id) {
		return dao.findById(id);
	}

	@Override
	public void saveArticle(Article article) {
		dao.saveArticle(article);
		
	}

	@Override
	public void updateArticle(Article article) {
		Article entity = dao.findById(article.getId());
		if(entity!=null){
			entity.setTitle(article.getTitle());
			entity.setCoverImg(article.getCoverImg());
			entity.setSummary(article.getSummary());
			entity.setContent(article.getContent());

			
		}
	}

	@Override
	public void deleteArticleById(String id) {
		dao.deleteArticleById(id);
		
	}

	@Override
	public List<Article> findAllArticle() {
		return dao.findAllArticle();
	}

}
