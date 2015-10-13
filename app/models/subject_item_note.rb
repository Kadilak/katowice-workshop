class SubjectItemNote < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject_item

  validates :student_id, :subject_item_id, presence: true

  accepts_nested_attributes_for :subject_item
  accepts_nested_attributes_for :student

  scope :for_subject_item, -> (subject_item) { where(subject_item: subject_item) }
end
