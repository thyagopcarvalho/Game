class Scene < ApplicationRecord
    belongs_to :story
    has_many :paths
end
