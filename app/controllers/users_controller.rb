class UsersController < ApplicationController
  def show
    @name = current_user.name #現在ログインしているユーザーのネーム
    # @products = Product.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")   #現在ログインしているユーザーが登録した商品
    @products = current_user.products.page(params[:page]).per(7).order("created_at ASC")
  end
end
