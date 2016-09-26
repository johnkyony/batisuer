require "test_helper"

feature "ManagementFeatures" do
  let(:john) { users(:management)  }
  

  let(:student) { students(:rebaca) }
  let(:account) {accounts(:rebaca_account)}
  let(:receipt) {receipts(:rebeca_first_payment)}


  before do
    sign_in_as john

  end

  scenario "management can see all the  students" do
    click_link 'students'
    students.each do |student|
      assert_content student.name 
      assert_content student.surname
      assert_content student.parent.name
      assert_content student.parent.surname
      
    end   
  end

  scenario "management can see rebaca account details" do 
    skip
    click_link 'students'

    within ".list-group-item#student_#{student.id}" do 

      click_link "Account details"
    end
    #account details of the student
    assert_content student.name
    assert_content student.surname
    assert_content student.parent.name 
    assert_content student.parent.surname
    assert_content account.amount   
    assert_content account.grade 
    assert_content receipt.amount
  end

  
  
end
