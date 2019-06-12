class Turma < ApplicationRecord
  belongs_to :ano
  has_many :estudantes, dependent: :destroy
  validates :nome, :presence => true
end
