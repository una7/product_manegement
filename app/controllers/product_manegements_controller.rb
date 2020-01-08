class ProductManegementsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :sold, :memo]
  def index 
  end

  def all 
    @product = Product.includes(:user).all.page(params[:page]).per(7).order("created_at ASC")
  end
  
  def new
    @product = Product.new
  end
  
  def create
    count = current_user.count + 1
    @product = Product.new(product_params)
    @product.number = count
    if @product.save
      current_user.update(count: count)
      redirect_to registration_product_manegements_path
    else
      render :new
    end

  end
  
  def registration
    @product = Product.includes(:user).all.where(status: :exhibit).page(params[:page]).per(7).order("created_at ASC")
    # @product = Product.all.where(status: :sold) 売れたもののみ表示するとき
  end
  
  def show
  end
  
  def memo
    @product.update(memo_params)
    redirect_to product_manegement_path
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
    if @product.user_id == current_user.id #出品したユーザーしか消せない
      @product.destroy
    else 
      redirect_to root_path
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
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price).merge(status: :exhibit, user_id: current_user.id)
  end
  def update_params
    params.require(:product).permit(:arrival, :successful_bid, :product_name, :product_price, :stock, :unit_price, :shipping_fee, :total_price)
  end

  def memo_params
    params.require(:product).permit(:comment)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
end
