require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&number)
    @list.each(&number)
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all?) { |e| e <= 5 } # true
