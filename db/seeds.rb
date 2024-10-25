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

# A exclamação, ao criar a moeda, caso aconteça algum erro é exibido no prompt.
Coin.create!(
  description: "Bitcoin",
  acronym: "BTC",
  url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-btc-color.svg"
)

Coin.create!(
  description: "Ethereum",
  acronym: "ETH",
  url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-eth-color.svg"
)

Coin.create!(
  description: "Pendle",
  acronym: "PENDLE",
  url_image: "https://static.mercadobitcoin.com.br/web/img/icons/assets/ico-asset-pendle-color.svg"
)

puts "Moedas cadastradas com sucesso!"