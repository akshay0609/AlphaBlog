class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.datetime :created_date
      t.datetime :updated_date
    end
    
  end
end
