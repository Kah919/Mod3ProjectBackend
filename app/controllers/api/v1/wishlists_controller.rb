class Api::V1::WishlistsController < ApplicationController
  def index
    @wishlists = Wishlist.all
    render json: @withlists
  end

  # def show
  #   @wishlist = Wishlist.find(params[:id])
  #   render json: @wishlist
  # end

  def create
    Wishlist.create(wishlist_params)
  end

  private
  def wishlist_params
    params.require(:wishlist).permit(:user_id,:product_id)
  end

end
