class PagesController < ApplicationController
  
  def home
    redirect_to articles_path if log_in?
  end
  
  def about
  
  end
  
end
