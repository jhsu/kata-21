class List::Singly
  attr_accessor :head, :tail

  ##
  # Returns the values of each node
  def values
    all = []
    return all unless @head
    current_node = @head
    while current_node
      all << current_node.value
      current_node = current_node.next
    end
    all
  end

  ##
  # Create a new node and add it to the end of the list and should always
  # return the new node.
  def add(value)
    new_node = Node.new(value)
    unless @head
      @head = @tail = new_node
    else
      @tail.next = new_node
      @tail = new_node
    end
  end

  ##
  # Remove a node and return the removed node.
  def delete(node)
		return nil unless @head

		current_node = @head
		previous_node = @head

		while current_node.value != node.value && current_node
			previous_node = current_node
			current_node = current_node.next 
		end		

		unless current_node.nil? && previous_node.nil?
			previous_node.next = current_node.next
			@head = current_node.next if  @head == current_node
			@tail = previous_node if @tail == current_node
		end
  end

  ##
  # Find a node by value.
  def find(value)
    return nil unless @head

    node = @head
    while node
      return node if node.value == value
      node = node.next
    end
  end
end
