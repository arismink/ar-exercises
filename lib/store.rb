class Store < ActiveRecord::Base

  has_many :employees

  validates_presence_of :name, :annual_revenue

  validates_length_of :name, minimum: 3

  validates_numericality_of :annual_revenue, :greater_than_or_equal_to => 0, :only_integer => true

  validates_inclusion_of :mens_apparel, :in => [true, false], message: "must be true or false"

  validates_inclusion_of :womens_apparel, :in => [true, false], message: "must be true or false"

  # run after validations
  before_save :apparel_check

  def apparel_check
    if !self.womens_apparel and !self.mens_apparel
      errors.add(:apparel, "for men and women cannot both be false")
    end
  end

end