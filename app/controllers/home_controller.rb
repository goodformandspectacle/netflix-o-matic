class HomeController < ApplicationController


  def show
    @genres = Genre.order("random()").where("movies_count > 0").limit(20)
  end

end
