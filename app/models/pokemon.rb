class Pokemon < ApplicationRecord
  validates :name, :attack, :defense, :presence => true
  validates :name, :uniqueness => true
  validates_numericality_of :attack, :greater_than => 0
  validates_numericality_of :attack, :greater_than => 0
=begin
  validate :attack_greater_than_zero, :defense_greater_than_zero

  def :attack_greater_than_zero
    if attack <= 0
      errors.add(:attack, "Attack must be greater than 0")
    end
  end

  def :defense_greater_than_zero
    if defense <=0
      errors.add(:defense, "Defense must be greater than 0")
    end
  end
=end
end
