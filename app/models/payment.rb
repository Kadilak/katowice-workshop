class Payment < ActiveRecord::Base
	belongs_to :student

	validates :payment_date, :year, :month, presence: true
	validates_uniqueness_of [:year, :month, :student_id], scope: [:year, :month, :student_id], :message => "There is already a payment for this period."
end
