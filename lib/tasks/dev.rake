namespace :dev do
  desc "Configura o ambiente de desenvolvimento:" # Descrição
  task setup: :environment do
    # Insere o spinner selecionado no terminal
    if Rails.env.development?
      # Efeito pong no terminal
      spinner = TTY::Spinner.new("[:spinner] Excluindo e re-criando bancos de dados ...", format: :pulse_2)
      spinner.auto_spin # Automatic animation with default interval
      sleep(2) # Perform task
      spinner.stop("Feito!") # Stop animation
      # Passo da task a ser executado (%x permite executar comandos de terminal)
      %x(rails db:drop db:create db:migrate db:seed)
    else
      puts "Você não esta em ambiente de desenvolvimento."
    end
  end

end