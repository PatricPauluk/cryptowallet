class WelcomeController < ApplicationController
  def index
    @nome = "Patric"

    @parametro = params[:parametro]
  end
end
