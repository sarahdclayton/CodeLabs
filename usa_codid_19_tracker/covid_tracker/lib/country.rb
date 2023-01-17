class Country 
    attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries 
    # class property
    @@records = []

    # constructor & parameters
    def initialize(country_name, country_cases, country_deaths, country_recoveries)
        # attribute 
        @name = country_name
        @confirmed_cases = country_cases
        @overall_deths = country_deaths
        @recoveries = country_recoveries

        # pushing the instance into array of records[]
        @@records << self
    end

    # class method...can be executed by the class and not the instance
    def self.all
        @@records 
    end
end

usa = Country.new("USA", '10', '0', '10')

puts "There are this many cases in the USA " + usa.confirmed_cases

puts Country.all

