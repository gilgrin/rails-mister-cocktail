class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show]

  def index
    @cocktail = Cocktail.new
    @cocktails = Cocktail.all
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.save
      # redirect_to cocktail_path(@cocktail)
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def set_cocktails
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
