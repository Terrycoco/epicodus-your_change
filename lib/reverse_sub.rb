class String
  define_method(:reverse_sub) do |search, replace|
    self.reverse!()
    self.sub!(search, replace.reverse())
    self.reverse!()
  end
end
