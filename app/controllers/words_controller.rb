class WordsController < ApplicationController

  def show
    @word = params[:id]
  end

end
