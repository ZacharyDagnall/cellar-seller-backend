class User < ApplicationRecord
    has_many :folders, dependent: :destroy
    has_many :items, through: :folders
    after_create :create_main_folder

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
        self.folders.find_by(name: "main").items
    end

    def save_search(name, items)
        newFolder = self.folders.create(name: ("#{name} #{DateTime.now}"), folder_type: "trackedsearches")
        items.each do |item|
            newFolder.items.create(item)
        end
        newFolder
    end

end
