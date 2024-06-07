class HomeController < ApplicationController
  def index
    @items = Dado.todos
  end

  def about
  end

  def cars
    @cars = Cars.todos
  end

  def show
    cars = Cars.todos
    id = params[:id]
    @car = cars.find { |car| car.id == id }
  end
end
