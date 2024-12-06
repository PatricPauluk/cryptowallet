class WelcomeController < ApplicationController
  def index
    @nome = "Patric"
    cookies[:curso] = "Curso de Ruby on Rails [Cookie]" # Criação de um cookie
    session[:curso] = "Curso de Ruby on Rails [Session]" # Criação de um cookie
    # Recebe um parâmetro e exibe na view index
    @parametro = params[:parametro] # Exemplo: ?parametro=Olá mundo!
  end
end
