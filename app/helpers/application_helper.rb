module ApplicationHelper
  # Meu primeiro helper, modifica o método Date.today para ser exibido no formato brasileiro
  def data_br(data_us)
    data_us.strftime("%d/%m/%y")
  end
end
