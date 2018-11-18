class Restaurant

    @@filepath = nil

    def self.filepath=(path=nil)
    end

    def self.file_exists?
        # class should know if the restaurant file exists
    end

    def self.create_file
        # create the restaurant file
    end

    def self.saved_restaurants
        # read the restaurant file
        # return the instances of restaurant
    end

end