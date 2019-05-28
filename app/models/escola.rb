class Escola < ApplicationRecord
    validates :nome, :presence => true, :length => {:minimum => 3}, uniqueness: true
    validates :cpf_do_administrador, presence: true, :length => {:is => 11}, uniqueness: true
    validates :numero_de_estudantes, :presence => true
    validates :numero_de_professores, :presence => true
    validates :numero_de_series, :presence => true
    validates :numero_de_turmas, :presence => true
end
