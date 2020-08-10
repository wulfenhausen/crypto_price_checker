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
            search_for_crypto
            attribute_checker
        when "2" #exit
            exit
        else
            puts "invalid input"
        end
    end
  
    def search_for_crypto
        puts "what cryptocurrency do you want to look for?"
            @user_input = gets.chomp
        @crypto = @API.get_crypto_by_name(@user_input)
      if @crypto != "Crypto not listed on Coin Gecki. Don't get scammed!"
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
    





#    def price_checker
 #       puts "would you like to see the price? (Y/N)"
  #      @user_input = gets.chomp
   #     if @user_input.downcase == "y"
    #        puts "The price in US Dollars is $#{@crypto.price}."
     #   elsif @user_input.downcase == "n"
      #      main_menu
       # else
        #    puts "invalid response"
         #   price_checker
       # end
    #end
  

    
       

  
  
  end
  