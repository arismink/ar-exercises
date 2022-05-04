require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validate :first_name_check, :last_name_check, :rate_check

  def first_name_check
    if !self.first_name.present?
      self.errors.add(:first_name, "required")

      puts "error: #{self.errors.messages}"
    end
  end

  def last_name_check
    if !self.last_name.present?
      self.errors.add(:last_name, "required")

      puts "error: #{self.errors.messages}"
    end

  end

end

@store1.employees.create(first_name: "Jack",  hourly_rate: 29)