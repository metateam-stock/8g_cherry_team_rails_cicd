require "test_helper"

class ArticleTest < ActiveSupport::TestCase
	test "should not save article without title" do
		article = Article.new(body: "text text text")
		assert_not article.save, "should not save article without title"
	end
	
	test "should save body characters minimum 10" do
		article = Article.new(title: "title", body: "body")
		assert_not article.save, "should save body characters minimum 10"
	end

	test "should save article with valid parameter" do
		article = Article.new(title: "title", body: "body of the text")
		assert article.save, "should save article with valid parameter"
	end
	
end
