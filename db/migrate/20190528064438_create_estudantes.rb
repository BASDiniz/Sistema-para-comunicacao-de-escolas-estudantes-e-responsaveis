class CreateEstudantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudantes do |t|
      t.string :nome
      t.string :cpf
      t.string :serie
      t.string :turma

      t.timestamps
    end
  end
end
