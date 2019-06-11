class Ano < ApplicationRecord
  belongs_to :escola
  has_many :turmas, dependent: :destroy
end
