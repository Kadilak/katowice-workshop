class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	values = subject_item.subject_item_notes.map(&:value)
  	return '0.00' unless values.size > 0
  	format("%.2f",values.sum.to_f/values.size)
  end

  def birthdateformat

  	
  	return "-" unless student.birthdate.present?
  	return student.birthdate.strftime('%Y-%m_%d') 
  end
end
