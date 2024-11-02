namespace :dev do
  desc "Configura o ambiente de desenvolvimento:" # Descrição
  task setup: :environment do # call: rails dev:setup
    if Rails.env.development?
      # Também poderia ser escrito da seguinte forma:
      # show_spinner("Apagando Banco de Dados...") do
      #   %x(rails db:drop)
      # end
      show_spinner("Apagando Banco de Dados...")                          { %x(rails db:drop) }
      show_spinner("Criando Banco de Dados...")                           { %x(rails db:create) } 
      show_spinner("Migrando Tabelas...")                                 { %x(rails db:migrate) }
      show_spinner("Alimentando Banco de Dados (Tipos de Mineração)...")  { %x(rails dev:add_mining_types) }
      show_spinner("Alimentando Banco de Dados (Moedas)...")              { %x(rails dev:add_coins) }
    else
      puts "Você não esta em ambiente de desenvolvimento."
    end
  end

  # -----------------------------------------------------------------------------

  # Essa task ficava em seeds.rb antes de ser uma task, o processo antigo esta comentado lá
  desc "Cadastra as moedas" # Descrição
  task add_coins: :environment do # call: rails dev:add_coins
    coins = [ # Variável coins recebe um array de hashes para cadastrar no banco
      {
        description:  "Bitcoin",
        acronym:      "BTC",
        url_image:    "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-btc-color.svg",
        mining_type: MiningType.find_by(acronym: 'PoW') # find_by: Procura no banco o acronym que corresponde com Pow)
      },
      {
        description:  "Ethereum",
        acronym:      "ETH",
        url_image:    "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-eth-color.svg",
        mining_type: MiningType.all.sample # all.sample: Busca um valor aleatório
      },
      {
        description:  "Pendle",
        acronym:      "PENDLE",
        url_image:    "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-pendle-color.svg",
        mining_type: MiningType.all.sample
      }
    ]

    coins.each do |coin| # Percorre o array de hashes e cadastra no banco de um a um
      Coin.find_or_create_by!(coin) # Se tiver duvidas de como escreve a variável, verifique nos models
    end

    # spinner.success("Feito!") # Stop animation
    # puts "Moedas criadas sem repetições."
  end

  # -----------------------------------------------------------------------------

  desc "Cadastra os tipos de mineração" # Descrição
  task add_mining_types: :environment do
    mining_types = [
      { description: "Proof of Work",      acronym:"PoW" },
      { description: "Proof of Stake",     acronym:"PoS" },
      { description: "Proof of Capacity",  acronym:"PoC" }
    ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type) # Se tiver duvidas de como escreve a variável, verifique nos models
    end
  end

  # -----------------------------------------------------------------------------
  
  # Tudo abaixo de private é privado apenas este arquivo
  private
  # Função para efeito de spinner no terminal
  def show_spinner(msg_start, msg_end = "Feito!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :pulse_2)
    spinner.auto_spin # Automatic animation with default interval
    yield # Executa o comando especificado após chamar o show_spinner
    spinner.success("Feito!")
  end
end















# # Efeito spinner no terminal (base, substituido pelo código acima)
# spinner = TTY::Spinner.new("[:spinner] Excluindo e re-criando bancos de dados ...", format: :pulse_2)
# spinner.auto_spin # Automatic animation with default interval
# sleep(2) # Perform task
# %x(rails db:drop db:create db:migrate db:seed)
# spinner.success("Feito!") # Stop animation
# # Passo da task a ser executado (%x permite executar comandos de terminal)