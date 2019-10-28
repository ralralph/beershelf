class BreweriesController < ApplicationController
  before_action :set_brewery, only: %i[show edit update destroy]

  def index
    @breweries = Brewery.select(:id, :name, :country, :image, :detail).order(name: :asc)
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      redirect_to breweries_path, notice: '登録しました。'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @brewery.update
      redirect_to brewery_path(@brewery), notice: '更新しました。'
    else
      render :edit
    end
  end

  def destroy
    if @brewery.destroy
      redirect_to breweries_path, notice: '削除しました。'
    end
  end

  private

  def set_brewery
    @brewery = Brewery.find(params[:id])
  end

  def brewery_params
    params.require(:brewery).permit(:name , :country, :image, :image_cache, :detail)
  end
end
