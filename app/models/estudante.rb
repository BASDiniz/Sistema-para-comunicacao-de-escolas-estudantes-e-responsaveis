class Estudante < ApplicationRecord
  belongs_to :turma
  validates :nome, :presence => true, :length => {:minimum => 3}
  validates :cpf, presence: true, :length => {:is => 11}, uniqueness: {message: 'is already used by one student. It must be unique.'}, numericality: { message: "%{value} contains some letter. It must be only numbers." }
end
