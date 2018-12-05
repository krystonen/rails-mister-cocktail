class CocktailsController < ApplicationController
  def index
    if params[:query].present?
      # sql_query = " \
      #    cocktails.name ILIKE :query \
      #    OR ingredients.name ILIKE :query \
      # "
      # @cocktails = Cocktail.left_joins(:ingredients).where(sql_query, query: "%#{params[:query]}%")
      @cocktails = Cocktail.global_search(params[:query])
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail= Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
     @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
