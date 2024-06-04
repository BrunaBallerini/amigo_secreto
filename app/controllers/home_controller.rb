class HomeController < ApplicationController
  def index
    @items = Dado.todos
  end
end
