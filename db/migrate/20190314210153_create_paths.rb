class CreatePaths < ActiveRecord::Migration[5.2]
  def change
    create_table :paths do |t|
      t.integer :caminho
      t.string :opcao

      t.timestamps
    end
  end
end
