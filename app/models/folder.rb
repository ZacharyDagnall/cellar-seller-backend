class Folder < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  def save_items(item_array)
    #figure out saving items into array
  end

end
