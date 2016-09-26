# require "test_helper"

# describe AccountsController do
#   let(:account) { accounts :one }

#   it "gets index" do
#     get :index
#     value(response).must_be :success?
#     value(assigns(:accounts)).wont_be :nil?
#   end

#   it "gets new" do
#     get :new
#     value(response).must_be :success?
#   end

#   it "creates account" do
#     expect {
#       post :create, account: { amount: account.amount, grade_id: account.grade_id, student_id: account.student_id }
#     }.must_change "Account.count"

#     must_redirect_to account_path(assigns(:account))
#   end

#   it "shows account" do
#     get :show, id: account
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get :edit, id: account
#     value(response).must_be :success?
#   end

#   it "updates account" do
#     put :update, id: account, account: { amount: account.amount, grade_id: account.grade_id, student_id: account.student_id }
#     must_redirect_to account_path(assigns(:account))
#   end

#   it "destroys account" do
#     expect {
#       delete :destroy, id: account
#     }.must_change "Account.count", -1

#     must_redirect_to accounts_path
#   end
# end
