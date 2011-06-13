class Fixnum
  # closest_fibonacci returns the largest Fibonacci number less than, or equal to, self
  def closest_fibonacci
    # there are no Fibonacci numbers less than 0
    return nil if self < 0
    small = 0
    large = 1
    while self >= large do
      temp = small + large
      small = large
      large = temp
    end
    small
  end
end
