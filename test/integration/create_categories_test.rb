require 'test_helper'

class CreateCategoriesController < ActionDispatch::IntegrationTest
    
    test 'get new category form and create category' do
        get new_category_path
    end
    
    
end
