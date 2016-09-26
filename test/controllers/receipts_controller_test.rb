# require "test_helper"

# describe ReceiptsController do
#   let(:receipt) { receipts :one }

#   it "gets index" do
#     get :index
#     value(response).must_be :success?
#     value(assigns(:receipts)).wont_be :nil?
#   end

#   it "gets new" do
#     get :new
#     value(response).must_be :success?
#   end

#   it "creates receipt" do
#     expect {
#       post :create, receipt: { amount: receipt.amount, student_id: receipt.student_id }
#     }.must_change "Receipt.count"

#     must_redirect_to receipt_path(assigns(:receipt))
#   end

#   it "shows receipt" do
#     get :show, id: receipt
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get :edit, id: receipt
#     value(response).must_be :success?
#   end

#   it "updates receipt" do
#     put :update, id: receipt, receipt: { amount: receipt.amount, student_id: receipt.student_id }
#     must_redirect_to receipt_path(assigns(:receipt))
#   end

#   it "destroys receipt" do
#     expect {
#       delete :destroy, id: receipt
#     }.must_change "Receipt.count", -1

#     must_redirect_to receipts_path
#   end
# end
