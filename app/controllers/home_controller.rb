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

end
