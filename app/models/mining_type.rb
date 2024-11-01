class MiningType < ApplicationRecord
  has_many :coins # has_many: Um mining_type pode pertencer a várias coins
end
