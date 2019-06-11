class Escola < ApplicationRecord
  has_many :anos, dependent: :destroy
  validates :nome, :presence => true, :length => {:minimum => 3}, uniqueness: true
  validates :cpfDoDiretor, presence: true, :length => {:is => 11}, uniqueness: true, numericality: { message: "%{value} contains some letter. It must be only numbers." }
end
