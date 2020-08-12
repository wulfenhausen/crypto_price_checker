class APIService
    BASE_URI = "https://api.coingecko.com/api/v3/coins/"
  
    def get_crypto_by_name(name)
      @namestring =name.gsub(" ", "_")
      uri = URI(BASE_URI + "#{@namestring}")
      cryptos = make_request(uri)
     #binding.pry
      if !cryptos["error"]
        @crypto1 = Crypto.new(cryptos)
       else
        puts "Crypto not listed on Coin Gecko. Don't get scammed!"
        sleep(1.5)
      end

    end
  
    def make_request(uri)
      response = Net::HTTP.get_response(uri)
      JSON.parse(response.body)
    end

   
  
  
  
  end
  