class String
  define_method(:coin_count) do
    coin_count = [0,0,0,0]

    coin = self.to_i
    output_str = ""
    first_count = true

    #quarters loop
    until coin. < 25 do
      coin_count[0] += 1
      coin -= 25
      first_count = false
    end
    if coin_count[0] > 0
      output_str = coin_count[0].to_s + " quarters "
    end

    #dimes loop
    until coin. < 10 do
      coin_count[1] = coin_count[1] + 1
      coin -= 10
      first_count = false
    end
    if coin_count[1] > 0
      output_str = output_str + coin_count[1].to_s + " dimes "
    end

    #nickles loop
    until coin. < 5 do
     coin_count[2] += 1
     coin -= 5
     first_count = false
    end
    if coin_count[2] > 0
      output_str = output_str + coin_count[2].to_s + " nickles "
    end

    #pennies loop
    until coin. == 0 do
     coin_count[3] += 1
     coin -= 1
     first_count = false
    end
    if coin_count[3] > 0
      output_str = output_str + coin_count[3].to_s + " pennies"
    end
    if output_str[0] == " "
      output_str[0] = ''
    end
    output_str
  end
end
