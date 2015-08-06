class Fixnum
  define_method(:your_change) do
    if self.<(5)
      return self.to_s.concat( ' pennies')
    end
  end
end
