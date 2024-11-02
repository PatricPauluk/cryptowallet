class MiningType < ApplicationRecord
  has_many :coins # has_many: Um mining_type pode pertencer a várias coins
  # has_many :coins, optional: true # optional: true: Torna o preenchimento do campo opcional
end
