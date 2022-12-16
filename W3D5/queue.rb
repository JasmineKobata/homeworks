class Queue
	def initialize
		@arr = []
	end

	def enqueue(el)
		@arr.push(el)
	end

	def dequeue
		@arr.shift
	end

	def peek
		@arr.first
	end

	def print
		p @arr
	end
end

q = Queue.new
q.enqueue(5)
q.enqueue(7)
q.enqueue(3)
q.print
p q.peek
q.dequeue
q.print