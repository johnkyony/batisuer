require "test_helper"

feature "FinanceFeatures" do
  let(:john) { users(:finances)  }
  

  let(:student) { students(:rebaca) }
  let(:account) {accounts(:rebaca_account)}
  let(:receipt) {receipts(:rebeca_first_payment)}

  before do
    sign_in_as john

  end
  

  scenario " john can see the balance of the account" do 
     skip
     click_link 'students'

    within ".list-group-item#student_#{student.id}" do 

      click_link "Account details"
    end
    balance = -account.amount + receipt.amount
    assert_content balance
  end
end
