class Path < ApplicationRecord
    belongs_to :scene, foreign_key: "scene_id"
end
