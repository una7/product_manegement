class SalesController < ApplicationController
  def index 
    @product =Product.all.where(status: :sold) 
    @sale = Sale.all
  end
  
  def new
    @product =Product.find(params[:id])
    @sale = Sale.new

  end
  
  def create
    @product =Product.find(params[:id])
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to sales_path
    else
      render :new
    end
  end

  private
  def sale_params
    params.require(:sale).permit(:sold_day, :market, :proceeds, :shipping_feed, :profit, :sold_period).merge(product_id: @product.id)
  end

  # def sale_params
  #   params.require(:product).permit(:arrival, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price).merge(status: :exhibit)
  # end

end
