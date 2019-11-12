class AgesController < ApplicationController
  def index
  end

  def age
    @ages = Age.all
    # @ages = Age.where(Age: true)
    # @ages = Age.all
    # @ages = Age.find(params[:id])
    # @ages = Age.find(1)
    # @ages = Age.where('age LIKE(?)',"% #{params[:keyword]}%").limit(5)
    # @ages = Age.find_by_age (age)
    # モデル.find_by_カラム名 (検索する値)
  end

  def search
    @ages = Age.where('age LIKE(?)',"% #{params[:keyword]}%").limit(5)
    respond_to do |format|
      format.html
      format.json
    end
  end

end
