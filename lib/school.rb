#1. create a class school that is initialize with a name


class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] =[]
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.map do |k, v|
      v.sort!
    end
    @roster
  end
end


# school = School.new("Bayside High School")
# school.roster # => {}
