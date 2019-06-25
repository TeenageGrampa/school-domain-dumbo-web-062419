class School

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(student_name, grade)
		@student_name = student_name
		@grade = grade
		if roster.include?(grade) == false
			@roster[grade] << []
		end
		roster[grade] << student_name
	end

	def grade(num)
		@roster[num]
	end

	def sort
		@roster.each do |name, grade|
			@roster[grade] = name.sort
		end
	end
	
