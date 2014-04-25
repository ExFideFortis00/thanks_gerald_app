class WelcomeController < ApplicationController

  def index
    
  end

  def reverse
    word = params[:dataInput]
    word.reverse.upcase!

    respond_to do |format|
      format.html
      format.json { render json: { wordInput: word }}
    end
  end


end