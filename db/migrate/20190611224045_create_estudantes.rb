class CreateEstudantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudantes do |t|
      t.string :nome
      t.string :cpf
      t.references :turma, foreign_key: true

      t.timestamps
    end
  end
end
