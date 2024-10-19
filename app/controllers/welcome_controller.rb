class WelcomeController < ApplicationController
  def index
    @nome = "Patric"

    # Recebe um parâmetro e exibe na view index
    @parametro = params[:parametro] # Exemplo: ?parametro=Olá mundo!
  end
end
