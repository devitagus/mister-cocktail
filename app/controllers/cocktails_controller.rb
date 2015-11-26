class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  # POST
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      flash[:notice] = "Your Cocktail was created."
      redirect_to cocktail_path(@cocktail.id)
    else
      flash[:notice] = "Oops something went wrong"
      render "new"
    end
  end


private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end

