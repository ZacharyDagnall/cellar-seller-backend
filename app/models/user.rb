class User < ApplicationRecord
    has_many :folders
    has_many :items, through: :folders
end
