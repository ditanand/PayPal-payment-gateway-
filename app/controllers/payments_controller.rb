class PaymentsController < ApplicationController

  def index
  	@token = Braintree::ClientToken.generate
  end

  def checkout
  	nonce_from_the_client = params[:payment_method_nonce]
		result = Braintree::Transaction.sale(
		  :amount => "11.00",
		  :payment_method_nonce => params[:payment_method_nonce],
		)
		if result.success?
		  "Success ID: #{result.transaction.id}"
		  @transaction_id = result.transaction.id
		else
		  result.message
		end
  end
  
end
