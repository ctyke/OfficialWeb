package com.ctyke.service;

import java.util.List;

import com.ctyke.model.Article;

public interface ArticleService {
	Article findById(int id);
	
	void saveArticle(Article article);
	
	void updateArticle(Article article);
	
	void deleteArticleById(String id);

	List<Article> findAllArticle(); 
}
