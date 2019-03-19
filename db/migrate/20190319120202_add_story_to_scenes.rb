class AddStoryToScenes < ActiveRecord::Migration[5.2]
  def change
    add_reference :scenes, :story, foreign_key: true
  end
end
