class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    @name         = params[:recipe][:name]
    @instructions = params[:recipe][:instructions]

    db = SQLite3::Database.new "db/development.sqlite3"

    @sql = "INSERT INTO recipes (name, instructions) VALUES ('#{@name}','#{@instructions}');"

    db.execute_batch(@sql)

  rescue SQLite3::SQLException
    raise "invalid sql! #{@sql}"
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
end
