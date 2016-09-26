require "test_helper"

feature "ReceiptCashier" do
  let(:john) { users(:cashier)  }
  

  let(:student) { students(:rebaca) }
  let(:account) {accounts(:rebaca_account)}


  before do
    sign_in_as john
  end
  

  

  

  
end
