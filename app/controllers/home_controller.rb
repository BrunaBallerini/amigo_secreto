class HomeController < ApplicationController
  def index
  end

  def about
  end

  def cars
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def delete
  end

  def new
  end

  def create
    require "byebug"
    debugger
    Car.create(
      name: params[:name],
      model: params[:model],
      year: params[:year],
      )
    redirect_to cars_path
  end

end


# create_table "cars", force: :cascade do |t|
#   t.string "name", limit: 150
#   t.string "model", limit: 150
#   t.integer "year"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
