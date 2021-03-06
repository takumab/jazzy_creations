class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

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
    if @card.update(card_params)
      redirect_to 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @card.destroy
    redirect_to card_url, notice: 'Product was successfully deleted!'
  end

  private

  def set_card
    @card = Card.find_by_id(params[:id])
  end

  def card_params
    params.require(:card).permit(:title, :image_url, :description, :price)
  end
end
