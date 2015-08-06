class Fixnum
  define_method(:your_change) do
    remainder = self

    denom = {'q' => {"denom" => "quarter",
                     "count" => 0,
                     "interval" => 25},
             'd' => {"denom" => "dime",
                     "count" => 0,
                     "interval" => 10},
             'n' => {"denom" => "nickel",
                     "count" => 0,
                     "interval" => 5},
             'p' => {"denom" => "penny",
                     "count" => 0,
                     "interval" => 1}}

    until remainder.==(0)
      denom.each do |key, coin|
        until remainder.<(coin.fetch('interval'))
          count = coin.fetch('count')

          if count.>=(1)
            coin.store('denom', coin.fetch('denom').concat('s'))
            coin.store('denom', (coin.fetch('denom')).sub('y','ie'))
          end

          coin.store('count', count.+(1))
          remainder = remainder.-(coin.fetch('interval'))
        end
      end
      remainder = 0
    end

    result = []
    denom.each do |key, coin|
      count = coin.fetch('count')
      if count.>(0)
        result.push("#{count} #{coin.fetch('denom')}")
      end
    end

    final = result.join(", ")
    final = final.reverse()
    final = final.sub(',','dna ')
    final = final.reverse()
  end
end
