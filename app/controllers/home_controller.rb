class HomeController < ApplicationController


  def show
    @genres = Genre.order("random()").limit(10)
  end

end
