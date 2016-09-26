require "test_helper"

feature "AdministrationFeatures" do
  let(:john) { users(:administration)  }
  

  let(:student) { students(:rebaca) }
  let(:parent)  {parents(:pierot)}
  let(:account) {accounts(:rebaca_account)}


  before do
    sign_in_as john

  end
  

  scenario "Administration can see all the parents" do
    click_link "parents"
    parents.each do |parent|
      assert_content parent.name
      assert_content parent.surname
      assert_content parent.phone_number
    end
  end
  scenario "Administration can see all the children belonging to parent" do
    click_link "parents"
    within ".list-group-item#parent_#{parent.id}" do
      click_link "Show Kids"
    end
    assert_content student.name
    assert_content student.surname
    
  end
end
