class ChangeArticleDate < ActiveRecord::Migration
  def change
    remove_column :articles, :created_date, :datetime
    remove_column :articles, :updated_date, :datetime
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
