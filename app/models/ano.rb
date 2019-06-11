class Ano < ApplicationRecord
  belongs_to :escola
  has_many :turmas, dependent: :destroy
  validates :nome, :presence => true
  validates :turno, :presence => true
end
