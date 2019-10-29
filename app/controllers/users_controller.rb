class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def index
    @users = User.all
  end

  def show
    @posts = current_user.posts.select(:id, :photo).order(update: :desc) if current_user.posts.exists?

    wishings = Wishlist.where(user_id: current_user).where(complete: true).order(created_at: :desc).select(:beer_id)
    @wishinglists = Beer.where(id: wishings)

    completes = Wishlist.where(user_id: current_user).where(complete: false).order(created_at: :desc).select(:beer_id)
    @completelist = Beer.where(id: completes)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
