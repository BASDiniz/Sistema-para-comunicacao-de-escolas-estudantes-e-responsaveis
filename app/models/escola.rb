class Escola < ApplicationRecord
  has_many :anos, dependent: :destroy
end
