class Estudante < ApplicationRecord
    validates :nome, :presence => true, :length => {:minimum => 3}
    validates :cpf, presence: true, :length => {:is => 11}, uniqueness: {message: 'is already used by one student. It must be unique.'}
    validates :serie, :presence => true, :length => {in: 2..2, message: 'must have two characters (Ex: 8ª)'}
    validates :turma, :presence => true, :length => {in: 1..1, message: 'must have only one alphabetical character'}
end
