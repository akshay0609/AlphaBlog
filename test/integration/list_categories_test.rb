require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
    
    def setup
      @category = Category.create(name: "books")
      @category1 = Category.create(name: "programming")
    end
    
    test "Should show categories list" do
      get categories_path
      assert_template 'categories/index'
      assert_select 'a[href=?]', category_path(@category), text: @category.name
      assert_select 'a[href=?]', category_path(@category1), text: @category1.name
    end 
      
    
end