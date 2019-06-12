class CreateEscolas < ActiveRecord::Migration[5.1]
  def change
    create_table :escolas do |t|
      t.string :nome
      t.string :cpfDoDiretor

      t.timestamps
    end
  end
end
