class Crypto
    attr_accessor :name, :description, :price
  
    @@all = []
  
    def initialize(crypto_input)
        @name = crypto_input["name"]
        @price = crypto_input["market_data"]["current_price"]["usd"]
        @description = crypto_input["description"]["en"]
        @@all << self
          
    end
  
    def self.all
          @@all
    end
  
    def self.find_by_name(name)
        self.all.detect { |x| x.name.downcase == name.downcase }
    end
  
    def print_pretty
      puts @name
    # puts @description
    #  puts @price
    end
  end