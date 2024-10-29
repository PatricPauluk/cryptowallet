# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# -----------------------------------------------------------
# | Local onde é preenchido os dados iniciais da aplicação  |
# | Executado com: rails db:seed                            |
# -----------------------------------------------------------


# spinner = TTY::Spinner.new("[:spinner] Criando moedas ...", format: :pulse_2)
# spinner.auto_spin # Automatic animation with default interval

# # Criado forma antiga
# Coin.create!(
#   description: "Bitcoin",
#   acronym: "BTC",
#   url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-btc-color.svg"
# )


# A exclamação, ao criar a moeda, caso aconteça algum erro é exibido no prompt.
# Quando a criação é declarada como Coin.create!, ele cria a moeda, mesmo que haja duplicidade.
# Coin.create!([
#   {
#     description: "Bitcoin",
#     acronym: "BTC",
#     url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-btc-color.svg"
#   },
#   {
#     description: "Ethereum",
#     acronym: "ETH",
#     url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-eth-color.svg"
#   },
#   {
#     description: "Pendle",
#     acronym: "PENDLE",
#     url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-pendle-color.svg"
#   }
# ])


# Quando a criação é declarada como Coin.find_or_create_by!, ele cria a moeda, mas sem duplicidades.
# É necessário criar um array de hashes a parte e colocar em um coins.each para funcionar.
coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-btc-color.svg"
  },
  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-eth-color.svg"
  },
  {
    description: "Pendle",
    acronym: "PENDLE",
    url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-pendle-color.svg"
  }
]

coins.each do |coin|
  sleep(1) # Perform task
  Coin.find_or_create_by!(coin)
end

# spinner.success("Feito!") # Stop animation
puts "Moedas criadas sem repetições."