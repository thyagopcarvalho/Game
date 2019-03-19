class AddSceneToPaths < ActiveRecord::Migration[5.2]
  def change
    add_reference :paths, :scene, foreign_key: true
  end
end
