class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
    @ingredient_types = ["vegetable", "meat", "fruit", "seasoning", "fat", "condiment"]
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    @ingredient_types = ["vegetable", "meat", "fruit", "seasoning", "fat", "condiment"]

    if @ingredient.valid?
      flash[:success] = "You successfully made a new ingredient!"
      redirect_to @ingredient
    else
      @errors = @ingredient.errors.full_messages
      render :new
    end
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :ingredient_type)
  end
end
