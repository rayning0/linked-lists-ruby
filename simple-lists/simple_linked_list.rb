class Element
  attr_reader :datum, :next
  def initialize(datum, n = nil)
    @datum = datum
    @next = n
  end

  def to_a
    array = [self.datum]
    current = self.next
    while current
      array << current.datum
      current = current.next
    end
    array
  end

  def self.to_a(node)
    node.to_a
  end

  def reverse
    Element.from_a(self.to_a.reverse)
  end

  def self.from_a(array)
    return nil if array == []
    answer = nil
    array.reverse_each do |value|
      answer = Element.new(value, answer)
    end
    answer
  end
end