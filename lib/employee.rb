class Employee < ActiveRecord::Base
  belongs_to :store

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
    unless self.errors.messages.empty?
      puts "error: #{self.errors.messages}"
    end
  end

end