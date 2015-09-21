def print_odd_indexed_integers(array)
	array.each_with_index do |item, index|
		if index % 2 == 1
			p item
			end	
	end
end
p print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) 

def odd_integers(array)
    array.select do |impar|
    	impar.odd?
    end
end
puts odd_integers([3, 4, 7, 9, 10, 16])
 
def first_under(array, limit)
	array.find {|i| i < limit}
end
puts first_under([13, 21, 7, 0, 11, 106], 10) 

def add_bang(array)
	array.map! do |string|
		string + "!" 
	  end
end
puts add_bang(["hi", "mom"])

def sum(array)
	array.inject do |sum, num| 
		sum + num
	end
end
puts sum([1, 1, 2, 3, 5])

def sorted_triples(array)
	array.each_slice(3) do |words| 
		p words.sort
	end
end
words = %w(De esta simple manera se puede reorganizar una oracion)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oracion", "reorganizar", "una"]]