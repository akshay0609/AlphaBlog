class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimume:5, maximum:50 }
  validates :description, presence: true, length: { minimume:10, maximum:300 }
end