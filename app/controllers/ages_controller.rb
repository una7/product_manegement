class AgesController < ApplicationController
  def index
  end

  def age
    @ages = Age.all
  end
  
  def search
    @ages = Age.where('age LIKE(?)', "%#{params[:keyword]}%").limit(10) 
  end
end
