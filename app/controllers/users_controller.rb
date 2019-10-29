class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def index
    @users = User.all
  end

  def show
    @posts = current_user.posts.select(:id, :photo).order(update: :desc) if current_user.posts.exists?
    # @wishinglists = current_user.wishing_lists
    # @conmpleatlist = current_user.complete_lists
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
