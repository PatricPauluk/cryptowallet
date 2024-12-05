module ApplicationHelper
  # Meu primeiro helper, modifica o método Date.today para ser exibido no formato brasileiro
  def data_br(data_us)
    data_us.strftime("%d/%m/%y")
  end

  # Helper para exibir o local conforme especificado em I18.locale
  def locale(locale)
    I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"
    # if I18n.locale == :en
    #   "Estados Unidos"
    # else
    #   "Português do Brasil"
    # end
  end

  # Traduz o ambiente de desenvolviento atual de inglês para português brasileiro
  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Produção"
    else
      "Testes"
    end
  end
end
