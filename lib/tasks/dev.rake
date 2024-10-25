namespace :dev do
  desc "Configura o ambiente de desenvolvimento:" # Descrição
  task setup: :environment do
    # Passo da task a ser executado (%x permite executar comandos de terminal)
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end