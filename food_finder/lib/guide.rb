# Loads our restaurant class
require 'restaurant'

class Guide
    
    # Configuration informationa bout the guide
    class Config
        @@action = ['list', 'find', 'add', 'quit']
        def self.actions; @@action; end
    end

    # Default initialization funciton to check for existing restaurant files
    def initialize(path=nil)
        # locate the restaurant text file at path
        Restaurant.filepath = path
        if Restaurant.file_usable?
            puts "Found restaurant file."
        # or create a new file
        elsif Restaurant.create_file
            puts "Created restaurant file."
        # exit if create fails
        else 
            puts "Exiting.\n\n"
            exit!
        end
    end

    # Launche the application
    def launch!
        # Call the introduction function
        introduction
        # action loop
        result = nil
        # Loop until user type in 'quit'
        until result == :quit
            # create variable to store our action
            action = get_action
            result = do_action(action)
        end
        conclusion
    end

    # Get user input
    def get_action
        # Sets our default action
        action = nil
        # Keep asking for user input until we get a valid action
        until Guide::Config.actions.include?(action)
            puts "Actions: " + Guide::Config.actions.join(", ") if action
            print "> "
            user_response = gets.chomp
            action = user_response.downcase.strip
            # Return its value of user input
        end
        return action 
    end

    def do_action(action)
        case action
        when 'list'
            puts "Listing..."
        when 'find'
            puts 'Finding...'
        when 'add'
            add
        when 'quit'
            return :quit
        else
            puts "\nI don't understand that command.\n"
        end
    end

    def add
        puts "\nAdd a restaurant\n\n"
        restaurant = Restaurant.new
        
        print "Restaurant name: "
        restaurant.name = gets.chomp.strip

        print "Cuisine type: "
        restaurant.cuisine = gets.chomp.strip

        print "Average price: "
        restaurant.price = gets.chomp.strip
        
        # Append the data from user input
        if restaurant.save
            puts "\nRestaurant Added\n\n"
        else
            puts "\nSave Error: restaurant not added\n\n"
        end
    end

    def introduction
        puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
        puts "This is an interactive guide to help you find the food you crave.\n\n"
    end

    def conclusion
        puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
    end

end