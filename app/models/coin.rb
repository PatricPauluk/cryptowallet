class Coin < ApplicationRecord
  # Especifica que o model Coin vai se comunicar com o model MiningType (necessário quando tem o ID de outra tabela (FK))
  belongs_to :mining_type
  # |-------------------------------------------------------------------------------------------------------------------|
  # | Comandos no terminal (rails c):                                                                                   |
  # | c = Coin.first                                                                                                    |
  # | m = MiningType.first                                                                                              |
  # | c.mining_type = m                                                                                                 |
  # |                                                                                                                   |
  # | O Rails automaticamente detecta que você esta passando o ID do MiningType selecionado, mesmo sem especificar o ID |
  # |-------------------------------------------------------------------------------------------------------------------|
end
