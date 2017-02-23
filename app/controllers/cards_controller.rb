class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
  end

  def edit
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to @card
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_card
    @card = Card.find_by_id(params[:id])
  end

  def card_params
    params.require(:card).permit(:title, :image_url, :description, :price)
  end
end
