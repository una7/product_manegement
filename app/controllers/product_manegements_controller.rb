class ProductManegementsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :sold]
  def index 
  end

  def all 
    @product = Product.all.page(params[:page]).per(5).order("created_at ASC")
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to registration_product_manegements_path
    else
      render :new
    end

  end
  
  def registration
    @product = Product.all.where(status: :exhibit)
    # @product = Product.all.where(status: :sold) 売れたもののみ表示するとき
  end
  
  def show
  end

  def edit
  end

  def update
    if @product.update(update_params)
      redirect_to registration_product_manegements_path notice: '情報を編集しました'
    else
      redirect_to edit_product_manegement_path(@product.id)
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to registration_product_manegements_path
    else
      redirect_to :show
    end
  end
  
  def sold
    if @product.update(status: :sold)
      redirect_to new_sales_path
    # else
    #   redirect_to product_manegement_path(@product.id)
    end
  end

  
  private
  def product_params
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price).merge(status: :exhibit)
  end
  def update_params
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price)
  end
  def set_product
    @product = Product.find(params[:id])
  end
end
