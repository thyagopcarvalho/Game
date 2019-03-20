class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.text :introducao

      t.timestamps
    end
  end
end
