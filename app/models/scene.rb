class Scene < ApplicationRecord
    belongs_to :story, foreign_key: "story_id"
    has_many :paths, dependent: :destroy
end
