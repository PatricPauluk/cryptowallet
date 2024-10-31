class AddMiningTypeToCoins < ActiveRecord::Migration[5.2]
  def change
    add_reference :coins, :mining_type, foreign_key: true
  end
end

# Gerado com: rails g migration AddMiningTypeToCoins mining_type:references
# Criado para gerar uma nova tabela em Coins
# O rails sabe sozinho que a tabela mining_type é referente ao model mining_type, apenas pelo nome ser igual