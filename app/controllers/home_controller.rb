class HomeController < ApplicationController
  def index
    @items = Dado.todos
  end

  def about
  end
end
