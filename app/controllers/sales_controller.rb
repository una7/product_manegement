class SalesController < ApplicationController
  before_action :set_sales, only: [:new, :create, :edit, :update, :cancel]
  def index 
    @product =Product.all.where(status: :sold) 
    @sale = Sale.all
  end
  
  def new
    @sale = Sale.new
  end
  
  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to sales_path
    else
      render :new
    end
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update(update_params)
      redirect_to sales_path notice: '情報を編集しました'
    else
      redirect_to root_path(@product.id)
    end
  end
  
  def cancel
    @products.update(status: :exhibit)
  end
    
  private
  def sale_params
    params.require(:sale).permit(:sold_day, :market, :proceeds, :shipping_feed, :profit, :sold_period).merge(product_id: @product.id)
  end
  
  def update_params
    params.require(:sale).permit(:sold_day, :market, :proceeds, :shipping_feed, :profit, :sold_period)
  end

  def set_sales
    @product = Product.find(params[:id])
  end

end


# .merge(status: :exhibit)キャンセル押されたらstatusをexhibitにする