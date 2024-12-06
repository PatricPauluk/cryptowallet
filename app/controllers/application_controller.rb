class ApplicationController < ActionController::Base
  # Todas as requisições passam por aqui

  before_action :set_locale

  def set_locale
      # Se existir um parâmetro chamado locale...
      if params[:locale]
        cookies[:locale] = params[:locale]
      end

      # Se existir um cookie chamado locale...
      if cookies[:locale]
        if I18n.locale != cookies[:locale]
          I18n.locale = cookies[:locale]
        end
      end
  end
end
