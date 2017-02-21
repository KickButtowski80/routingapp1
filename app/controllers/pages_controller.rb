class PagesController < ApplicationController
  def about
  end

  def contact
  end
  
  def home
  end
  
  def missing
  end
  
  def something
    @else = params[:else]
    @another_one = params[:another_one]
  end

end
