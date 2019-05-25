class CreateEscolas < ActiveRecord::Migration[5.1]
  def change
    create_table :escolas do |t|
      t.string :nome
      t.string :cpf_do_administrador
      t.integer :numero_de_estudantes
      t.integer :numero_de_series
      t.integer :numero_de_turmas
      t.integer :numero_de_professores

      t.timestamps
    end
  end
end
