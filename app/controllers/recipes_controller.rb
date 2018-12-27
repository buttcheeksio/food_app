class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @users = User.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @users = User.all

    if @recipe.valid?
      flash[:success] = "You successfully made a new recipe!"
      redirect_to @recipe
    else
      @errors = @recipe.errors.full_messages
      render :new
    end
  end

  def recipe_params
    params.require(:recipe).permit(:name, :directions, :user_id)
  end
end
