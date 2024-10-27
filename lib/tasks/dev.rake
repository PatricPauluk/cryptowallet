namespace :dev do
  desc "Configura o ambiente de desenvolvimento:" # Descrição
  task setup: :environment do
    if Rails.env.development?
      # Também poderia ser escrito da seguinte forma:
      # show_spinner("Apagando Banco de Dados...") do
      #   %x(rails db:drop)
      # end
      show_spinner("Apagando Banco de Dados...") { %x(rails db:drop) }
      show_spinner("Criando Banco de Dados...") { %x(rails db:create) } 
      show_spinner("Migrando Tabelas...") { %x(rails db:migrate) }
      show_spinner("Alimentando Banco de Dados...") { %x(rails db:seed) }
    else
      puts "Você não esta em ambiente de desenvolvimento."
    end
  end
  
  private
  # Função para efeito de spinner no terminal
  def show_spinner(msg_start, msg_end = "Feito!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :pulse_2)
    spinner.auto_spin # Automatic animation with default interval
    yield # Executa o comando especificado após chamar o show_spinner
    spinner.success("Feito!")
  end
end

# # Efeito spinner no terminal
# spinner = TTY::Spinner.new("[:spinner] Excluindo e re-criando bancos de dados ...", format: :pulse_2)
# spinner.auto_spin # Automatic animation with default interval
# sleep(2) # Perform task
# %x(rails db:drop db:create db:migrate db:seed)
# spinner.success("Feito!") # Stop animation
# # Passo da task a ser executado (%x permite executar comandos de terminal)