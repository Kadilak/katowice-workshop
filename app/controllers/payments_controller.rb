class PaymentsController < ApplicationController
	# expose(:payments) { Payment.includes(:student) }
	expose(:student)
	expose(:payment, attributes: :payment_params)
	expose(:payments) { student.payments }

	def index
		self.payments = Payment.all
	end

	def new
	end

	def create
		if payment.save
			redirect_to student_path(payment.student_id), notice: I18n.t('shared.created', resource: 'Payment')
	    else
	    	render :new
	    end
	end

	def destroy
		payment = Payment.find(params['id'])
    payment.destroy
    redirect_to payments_path, notice: I18n.t('shared.deleted', resource: 'Payment')
  end

	private

	def payment_params
		params.require(:payment).permit(:payment_date, :month, :year, :student_id, :student, student: [])
	end
end
