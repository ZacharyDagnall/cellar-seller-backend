class User < ApplicationRecord
    has_many :folders, dependent: :destroy
    has_many :items, through: :folders
    after_create :create_main_folder
    has_secure_password

    validates :name, presence: true, uniqueness: true 
    validates :password, presence: true, length: {minimum: 5} 

    def tracked_searches
        self.folders.select{|folder| folder.folder_type == "trackedsearches"}
    end

    def saved_items
        self.folders.select{|folder| folder.folder_type == "saveditems"}
    end

    def create_main_folder
        self.folders.create(name: "main", folder_type:"saveditems")
    end

    def main
        self.folders.first.items
    end

    def save_folder_and_items(name, items, folder_type)
        newFolder = self.folders.create(name: "#{name}"+(folder_type=="trackedsearches"? " #{DateTime.now.strftime("%m/%m/%Y %I:%M%p")}": ""), folder_type: folder_type)
        items.each do |item|
            newFolder.items.create(name: item[:name], price: item[:price], url: item[:url], img: item[:img])
        end
        newFolder
    end

end
