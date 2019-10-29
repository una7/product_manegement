class SalesController < ApplicationController
  def index 
  end
  
  def new
    @sale = Sale.new
  end
  
  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def sale_params
    params.require(:sale).permit(:sold_day, :market, :proceeds, :shipping_feed, :profit, :sold_period)
  end


end
