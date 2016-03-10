require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  def setup
    @article = Article.new(title: "Rails Tutorial", description: "Ruby on Rails")
  end
  
  test "Should be valid" do
    assert @article.valid?
  end
  
  test "title should be present" do
    @article.title = " "
    assert_not @article.valid?
  end
  
  test "description should be present" do
    @article.description = " "
    assert_not @article.valid?
  end
  
  test "title should not be to long" do
    @article.title = "a" * 55
    assert_not @article.valid?
  end  
  
  test "description should not be to long" do
    @article.description = "a" * 302
    assert_not @article.valid?
  end 
  
  test "title should not be to short" do
    @article.title = "a" * 2
    assert_not @article.valid?
  end  
  
  test "description should not be to short" do
    @article.description = "a" * 5
    assert_not @article.valid?
  end 
  
end
