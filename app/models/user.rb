class User < ApplicationRecord
    has_many :folders, dependent: :destroy
    has_many :items, through: :folders
end
