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
  validate :first_name_check, :last_name_check, :rate_check, :store_check, :display_error

  def first_name_check
    unless self.first_name.present?
      self.errors.add(:first_name, "required")
    end
  end

  def last_name_check
    unless self.last_name.present?
      self.errors.add(:last_name, "required")
    end
  end

  def rate_check
    unless self.hourly_rate.is_a? Integer
      self.errors.add(:hourly_rate, "needs to be an integer")
    end

    unless (40..200).include? self.hourly_rate
      self.errors.add(:hourly_rate, "must be inbetween 40 to 200 inclusively")
    end

  end

  def store_check
    if self.store_id.nil?
      self.errors.add(:store_id, "missing or invalid")
    end
  end

  # Display error message if there is any
  def display_error
    puts "error: #{self.errors.messages}"
  end

end

@store1.employees.create(first_name: "Jack", last_name: "Ray", hourly_rate: 50)

Employee.create(first_name: "Jack", last_name: "Ray", hourly_rate: 50)