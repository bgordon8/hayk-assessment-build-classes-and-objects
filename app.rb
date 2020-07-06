class Building

    attr_accessor :name, :number_of_tenants
    attr_reader :address
    @@all = []


    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self
    end

    def self.average_tennants_per_building
        total = all.reduce(0) { |total,building| total += building.number_of_tenants}
        (total / all.length.to_f).round
    end


    def name_and_address 
        "Building name: #{name}, Building address #{address}"
    end

    def average_tennants_by_floor
        "Building: #{name} has an average of: #{number_of_tenants/@number_of_floors} tenants per floor"
    end
    
    def self.all
        @@all
    end
    
end


building1 = Building.new("tall", "1500 E Colfax Ave", 113, 8000)
building2 = Building.new("regular", "8886 E Grape St", 4, 15)
building3 = Building.new("short", "123 W 17th Ave", 26, 587)
