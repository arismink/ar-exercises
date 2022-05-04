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
    unless self.errors.full_messages.empty?
      puts "error: #{self.errors.full_messages}"
    end
  end

end


class Store < ActiveRecord::Base
  validate :name_check, :revenue_check, :apparel_check, :display_error

  def name_check
    if self.name.length < 3
      self.errors.add(:name, "length must be greater than 3 characters")
    end
  end

  def revenue_check
    unless self.annual_revenue >= 0
      self.errors.add(:annual_revenue, "must be greater than zero")
    end
  end

  def apparel_check
    unless [TrueClass, FalseClass].include? self.mens_apparel
      self.errors.add(:mens_apparel, "must be a valid boolean")
    end

    unless [TrueClass, FalseClass].include? self.womens_apparel
      self.errors.add(:womens_apparel, "must be a valid boolean")
    end
  end

  # Display error message if there is any
  def display_error
    unless self.errors.full_messages.empty?
      puts "error: #{self.errors.full_messages}"
    end
  end

end
