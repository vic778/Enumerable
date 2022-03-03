module MyEnumerable
  def all?(&number)
    result = true
    each do |item|
      result = false unless number.call(item)
    end
    result
  end
end
