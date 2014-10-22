class WordsController < ApplicationController

  def show
    @word = params[:id]
    @genres = Genre.where(["lower(name) like ?", "%#{@word.downcase}%"]).order("random()").limit(30)
  end

end
