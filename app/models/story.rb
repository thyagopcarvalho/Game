class Story < ApplicationRecord
    has_many :scenes, dependent: :delete_all
end
