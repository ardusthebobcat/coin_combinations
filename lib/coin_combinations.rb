class String
  define_method(:coin_count) do
    coin_count = [0, 0, 0, 0]

    coin = self.to_i

    #quarters loop
    until coin. < 25 do
      coin_count[0] += 1
      coin -= 25
    end
    #coin_count
    #dimes loop
    until coin. < 10 do
      coin_count[1] = coin_count[1] + 1
      coin -= 10
    end
    #nickles loop
    until coin. < 5 do
     coin_count[2] += 1
     coin -= 5
    end
    #pennies loop
    until coin. == 0 do
     coin_count[3] += 1
     coin -= 1
    end

    output_str = coin_count[0].to_s + "quarters" + coin_count[1].to_s + "dimes" + coin_count[2].to_s + "nickles" + coin_count[3].to_s + "pennies"

    output_str
  end
end
