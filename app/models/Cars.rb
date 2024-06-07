class Cars
    attr_accessor :id, :name, :model, :year

    def initialize(car_hash = {})
      @id = car_hash[:id]
      @name = car_hash[:name]
      @model = car_hash[:model]
      @year = car_hash[:year]
    end

    def self.todos
      carro1 = Cars.new({id: "1", name:"Gol", model:"VW", year:"2006"})
      carro2 = Cars.new({id: "2", name:"Corolla", model:"Toyota", year:"2014"})
      carro3 = Cars.new({id: "3", name:"C3", model:"Citroen", year:"2014"})
      [carro1, carro2, carro3]
    end
end
