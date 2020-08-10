class APIService
    BASE_URI = "https://api.coingecko.com/api/v3/coins/"
  
    def get_crypto_by_name(name)
      @namestring =name.gsub(" ", "_")
      uri = URI(BASE_URI + "#{@namestring}")
      cryptos = make_request(uri)
     # binding.pry
      if cryptos != nil
        @crypto1 = Crypto.new(cryptos)
       else
        "Crypto not listed on Coin Gecki. Don't get scammed!"
      end
    end
  
    def make_request(uri)
      response = Net::HTTP.get_response(uri)
      JSON.parse(response.body)
    end

   
    #def lookformatchinresults(array_name)
     # foundcrypto = array_name.detect {|x|x["name"].downcase == @namestring.downcase}
      #if foundcrypto != nil
       # @crypto1 = Crypto.new(foundcrypto)
      #else
       # "Crypto not found"
      #end
    #end
  
  
  
  end
  