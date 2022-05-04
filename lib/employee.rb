class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :last_name, :store_id

  validates_numericality_of :hourly_rate, :only_integer => true

  validates_inclusion_of :hourly_rate, :in => 40..200

end