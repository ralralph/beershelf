class PostsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    record = @post.build_record #@post.build_record #
    record.build_tast

    @beers = Beer.select(:id, :name).order(id: :desc)
    @records = Record.select(:id, :serving_style).order(id: :desc)
    @rates = [1 ,2 ,3 ,4 ,5]
  end

  def create
    @post = current_user.posts.build(post_params)
    binding.pry
    if @post.save
      redirect_to root_path, notice: '投稿しました。'
    else
      render :new
    end
  end

  def show
    @user = @post.user
    @beer = @post.beer
    @record = @post.record
  end

  def edit
    @rates = [1 ,2 ,3 ,4 ,5]
  end

  def update
    if @post.update(post_params)
      redirect_to post_path, notice: '更新しました。'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy!
      redirect_to root_path
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :photo, :photo_cache, :remove_photo, :beer_id, :record_id,
                                  record_attributes:
                                  [
                                    :id,
                                    :feeling,
                                    :serving_style,
                                    :location,
                                  tast_attributes:
                                    [
                                      :id,
                                      :bitterness,
                                      :sweetness,
                                      :sourness,
                                      :flavor
                                    ]
                                  ]
                                )
  end
end
