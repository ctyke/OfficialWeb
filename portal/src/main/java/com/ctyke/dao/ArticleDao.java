package com.ctyke.dao;

import java.util.List;

import com.ctyke.model.Article;;

public interface ArticleDao {
	Article findById(int id);

	void saveArticle(Article article);
	
	void deleteArticleById(String id);
	
	List<Article> findAllArticle();
}
