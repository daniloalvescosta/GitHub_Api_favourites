class Favorite < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :owner, presence: true, uniqueness: true
end
