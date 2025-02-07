class Cart
  attr_reader :contents

  def initialize(contents)
    @contents = contents || {}
  end

  def add_item(id)
    contents[id.to_s] = (contents[id.to_s] || 0) + 1
  end

  def decrease_quantity(id)
    quantity = (contents[id.to_s] = contents[id.to_s] - 1)
    remove_item(id) if quantity == 0
  end


  def remove_item(id)
    contents.delete(id.to_s)
  end
end
