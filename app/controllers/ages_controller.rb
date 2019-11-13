class AgesController < ApplicationController
  def index
  end

  def age
    @ages = Age.all
  end
  
  def search
    # redirect_to root_path if params[:keyword].blank?
    @ages = Age.where('age LIKE(?)', "%#{params[:keyword]}%").limit(10) 
    # @ages = Age.where('season LIKE(?)', "%#{params[:keyword]}%").limit(10)
    # @ages = Age.search(params[:keyword])
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end
end
