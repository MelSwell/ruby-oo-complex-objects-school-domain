require 'pry'
# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
    @roster[grade] << name
    end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end

