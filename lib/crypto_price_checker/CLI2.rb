class CLI

    def run
      system("clear")
      @user_input = nil
      @API = APIService.new
      until @user_input == "exit"
        main_menu
      end
  
    end
  
  
    def main_menu
      puts "Press 1 to enter a crypto to look up. Press 2 to exit: "
      @user_input = gets.chomp()
  
      case @user_input
        when "1" #searching crypto
            crypto_search
            attribute_checker
        when "2" #exit
            exit
        else
            puts "invalid input"
        end
    end
  
    def crypto_search #gives borrower the ability to search a crypto by name
        #Prompt Borrwer for a currency to search
        puts "what cryptocurrency do you want to look for?"
            @user_input = gets.chomp
        #Search Crypto in API
        @crypto = @API.get_crypto_by_name(@user_input.downcase)
      if @crypto != "Crypto not listed on Coin Gecko. Don't get scammed!"
      @crypto.print_pretty
      else
        puts @crypto
      end
    end


    def attribute_checker
        puts "1. Description of the crypto"
        puts "2. Price of the crypto"
        puts "3. Main menu"
        @user_input = gets.chomp
        case @user_input
            when "1"
                puts @crypto.description
            when "2"
                puts "The price in US Dollars is $#{@crypto.price}."
            when "3"
                main_menu
            else
                puts "invalid input"
            
        end
    end
    






  

    
       

  
  
  end
  