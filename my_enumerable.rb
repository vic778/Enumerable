module MyEnumerable
  def all?(&number)
    result = true
    each do |item|
      result = false unless number.call(item)
    end
    result
  end

  def any?(&number)
    result = false
    each do |item|
      result = true if number.call(item)
    end
    result
  end

  def filter(&number)
    result = []
    each do |item|
      result << item if number.call(item)
    end
    result
  end
end
