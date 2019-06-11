class CreateAnos < ActiveRecord::Migration[5.1]
  def change
    create_table :anos do |t|
      t.string :nome
      t.string :turno
      t.references :escola, foreign_key: true

      t.timestamps
    end
  end
end
