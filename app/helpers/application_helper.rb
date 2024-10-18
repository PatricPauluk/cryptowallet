module ApplicationHelper
  # Meu primeiro helper, modifica o método Date.today para ser exibido no formato brasileiro
  def data_br(data_us)
    data_us.strftime("%d/%m/%y")
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
