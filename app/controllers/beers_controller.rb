class BeersController < ApplicationController
  before_action :set_beer, only: %i[show edit update destroy]

  def index
    @beers = Beer.all.order(name: :asc)
  end

  def new
    @beer = Beer.new
    @brewery = @beer.build_brewery
    @category = @beer.build_category
    @volume_value = Range.new(0, 100) # アルコール度数の入力範囲
    @brewery_list = Brewery.select(:id, :name).order(name: :asc)
    @category_list = Category.select(:id, :name).order(name: :asc)
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beers_path, notice: '作成しました。'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @beer.update(beer_params)
      redirect_to beer_path(@beer), notice: '更新しました。'
    else
      render :edit
    end
  end

  def destroy
    if @beer.destroy
      redirect_to beers_path, notice: '削除しました。'
    end
  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :volume, :detail, :image, :image_cache, :brewery_id, :category_id,
                                  brewery_attributes:
                                  [
                                    :id,
                                  ],
                                  category_attributes:
                                  [
                                    :id,
                                  ]
                                )
  end

end
