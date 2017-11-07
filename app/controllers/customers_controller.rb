class CustomersController < ApplicationController
  def index
  	@customers = Customer.all
  end

  def alphabetized
  	@ordered_customers = Customer.order(:full_name)
  end

  def missing_email
  	@no_email_customers = Customer.where(email_address: '') 
  end
end
