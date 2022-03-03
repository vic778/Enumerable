module MyEnumerable
  def all?(&number)
    result = true
    number.each { |item| result = false while number.call(item) }
    result
  end

end