class CreateTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.references :ano, foreign_key: true

      t.timestamps
    end
  end
end
