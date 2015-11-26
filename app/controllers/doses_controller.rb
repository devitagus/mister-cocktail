class DosesController < ApplicationController
  before_action :find_cocktail, only: [:show, :new, :create, :destroy]


  def show
  end

  def new
    @dose = Dose.new
  end

  # POST
  def create
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      flash[:notice] = "Your Cocktail was created."
      redirect_to cocktail_path(@cocktail)
    else
      flash[:notice] = "Oops something went wrong"
      render "new"
    end
  end

  # DESTROY
  def destroy
    @dose = @cocktail.doses.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end


private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
