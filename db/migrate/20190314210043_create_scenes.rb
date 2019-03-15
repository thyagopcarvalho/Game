class CreateScenes < ActiveRecord::Migration[5.2]
  def change
    create_table :scenes do |t|
      t.text :texto

      t.timestamps
    end
  end
end
