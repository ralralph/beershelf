class WishlistsController < ApplicationController

  def create
    wishlist = Wishlist.new(wishlist_params)
    wishlist.save
    redirect_to root_path, notice: '登録しました。'
  end

  def update
    @beer = Wishlist.where(user_id: current_user).where(beer_id)
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:complete, :user_id, :beer_id)
  end

end
