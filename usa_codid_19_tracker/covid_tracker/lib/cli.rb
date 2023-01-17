class CLI 
    def run
        # run user.seed method to populate array of users at begining of cli 
        User.seed
        system('clear')
        gretting
        login
        while menu != 'exit'
        end 
        end_program
    end

    def login
        authenticated = false

        while authenticated != true
            puts "Please login."
            puts "> What is your username?"
            username = gets.chomp.downcase
            puts "> What is your password?"
            password = gets.chomp

            if Auth.authenticate_user(user.all, username, password)
              puts "Login successful!"
                authenticated = true
            else
                puts "Please login again"
        end
    end

    def gretting
        # puts "This executed from the CLI run instance method"
        puts "Welcome to the Covid-19 Tracker!"
    end

    def menu
        #list options
        list_options
        # ask the user which one does he/she want?
        puts "Which one do you perfer?"
        input = gets.chomp
        choose_options(input)
        return input 
    end

    def list_options
        puts "1. "
        puts "2. "
        puts "3. "
    end

    def choose_options(input)
        case input
        when '1'
            puts "Number 1 chosen"
        when '2'
            puts "Number 2 chosen"
        end
    end

    def end_program
        puts "See you latter!"
    end

end
