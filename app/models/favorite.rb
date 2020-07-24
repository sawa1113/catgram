class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :cat

    validates_uniqueness_of :cat_id, scope: :user_id
end
