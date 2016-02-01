def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def subtract(*numbers)
  numbers.inject { |sum, number| sum - number }
end

def calculate(*args)
	newArgs = []
	call    = false
  args.each do |arg|
  	if arg.is_a?(Hash) && arg[:add]
  		call = true
  		return add(*newArgs)
  	elsif arg.is_a?(Hash) && arg[:subtract]
  			call = true
  			return subtract(*newArgs)
  	else
  			newArgs << arg
  	end
  end

  if !call
  	return subtract(*args)
  end
end


puts calculate(4, 5, add: true)