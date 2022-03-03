module MyEnumerable
  def all?(&number)
    result = true
    each do |item|
      result = false unless number.call(item)
    end
    result
  end

  def filter(&number)
    result = true
    each { |item| result << item if number.call(item) }
    result
  end
end
