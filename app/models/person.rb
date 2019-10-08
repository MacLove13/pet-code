class Person < ApplicationRecord
	require 'date'

  has_many :animals, dependent: :destroy

  def age
    today = Date.today
    date = today.year - self.date_of_birth.year
  end

  def animals_cost
    self.animals.sum(:monthly_cost).to_f
  end
end
