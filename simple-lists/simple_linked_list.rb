class Element
  attr_accessor :datum, :next
  def initialize(datum, n)
    @datum = datum
    @next = n
  end

  def to_a
    current = self
    array = []
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
    #current = Element.new(self.datum, self.next)
    #if current.to_a.size > 1
    #  current_next = Element.new(current.next.datum, nil)
    #  current.datum, current_next.datum = current_next.datum, current.datum
    #end
    #current.next = current_next
    #current
    #-----------------------------------------
    #current = Element.new(self.datum, nil)

    #if self.next
    #  next_element = Element.new(self.next.datum, self.next.next)
    #end

    #while next_element
    #  next_next_element = next_element.next

    #  next_element.next = Element.new(current.datum, current.next)

    #  current = next_element
    #  next_element = next_next_element
    #end

    #current
  end

  def self.from_a(array)
    array = [*array] if array.is_a?(Range) # convert range to an array
    return nil if array.empty?
    if array.size == 1
      return Element.new(array[0], nil)
    end
    if array.size > 1
      next_node = nil
      array.reverse_each do |value|
        @element = Element.new(value, next_node)
        next_node = @element
      end
      return @element
    end
  end
end