class Coin < ApplicationRecord
  # Especifica que o model Coin vai se comunicar com o model MiningType (necessário quando tem o ID de outra tabela (FK))
  belongs_to :mining_type # belongs_to: Uma coin pode pertencer a apenas um mining_type
end

  # |-------------------------------------------------------------------------------------------------------------------|
  # | Comandos no terminal (rails c):                                                                                   |
  # | c = Coin.first                                                                                                    |
  # | m = MiningType.first                                                                                              |
  # | c.mining_type = m                                                                                                 |
  # |                                                                                                                   |
  # | O Rails automaticamente detecta que você esta passando o ID do MiningType selecionado, mesmo sem especificar o    |
  # | ID. Após gravar no banco com c.save, eu consigo pesquisar quantas coins estão associadas a um mining type com o   |
  # | comando: m.coins                                                                                                  |
  # | Caso já tenha uma moeda selecionada em C, você pode "jogar" ela no MiningType para também inserir o id com o      |
  # | comando: m.coins << c                                                                                             |
  # |-------------------------------------------------------------------------------------------------------------------|