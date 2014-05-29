class GroceryList
  attr_reader :date_created
  def initialize
    @list = {}
    @date_created = Time.now
  end
  
  def add (item, qty)
    @list[item] = qty
  end
  
  def remove (item)
    @list.delete(item)
  end
  
  # will not print anything if the list is empty
  def print_list
      @list.each { |item, qty| puts "#{qty} #{item}" }
  end
  
end

class UserInput
	def initialize
		@grocery_list = GroceryList.new
		puts "Welcome to Grocery List v1.0!"
		puts "----------------------------------------"
		puts "This list was created on #{@grocery_list.date_created}\n\n"
		start
	end

	def start
		while true
			puts "What would you like to do?\n Available commands: 'add', 'remove', 'print', 'exit'"
			action = gets.chomp.downcase
			case action
			when 'add'
				add
			when 'remove'
				remove
			when 'print'
				print
			when 'exit'
				break
			end
		end
	end

	def add
		puts "What would you like to add?"
		new_item = gets.chomp
		puts "How many would you like?"
		new_qty = gets.chomp
		@grocery_list.add(new_item, new_qty)
	end

	def remove
		puts "What would you like to remove?"
		remove_item = gets.chomp
		@grocery_list.remove(remove_item)
	end

	def print
		@grocery_list.print_list
	end

end


instance = UserInput.new