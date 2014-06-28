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
    name         = params[:recipe][:name]
    instructions = params[:recipe][:instructions]

    db = SQLite3::Database.new "db/development.sqlite3"

    sql = 'INSERT INTO recipes (name, instructions) VALUES ("' + name +' ","' + instructions + '");'
    #raise sql

    db.execute_batch(sql)

    render text: "ran sql: #{sql}. User = #{User.first.admin}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
end
