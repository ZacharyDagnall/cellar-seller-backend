class User < ApplicationRecord
    has_many :folders, dependent: :destroy
    has_many :items, through: :folders
    after_create :create_main_folder

    def tracked_searches
        self.folders.select{|folder| folder.folder_type == "trackedSearches"}
    end

    def saved_items
        self.folders.select{|folder| folder.folder_type == "savedItems"}
    end

    def create_main_folder
        self.folders.create(name: "main", folder_type:"savedItems")
    end

end
