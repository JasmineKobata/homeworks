class Map
	def initialize
		@arr = []
	end

	def set(key, value)
		idx = @arr.index { |kvpair| kvpair[0] == key }
		if idx
			@arr[idx][1] = value
		else
			@arr << [key, value]
		end
	end

	def get(key)
		@arr.each { |kvpair| return kvpair[1] if kvpair[0] == key }
		nil
	end

	def delete(key)
		@arr.select! { |kvpair| kvpair[0] != key }
	end

	def show
		p @arr
	end
end

map = Map.new
map.set(1, "k")
map.set(0, "qwerty")
map.set("file", :X)
map.show
p map.get("file")
map.set(1, 458)
map.show
map.delete(1)
map.show