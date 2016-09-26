# require "test_helper"

# describe FeesController do
#   let(:fee) { fees :one }

#   it "gets index" do
#     get :index
#     value(response).must_be :success?
#     value(assigns(:fees)).wont_be :nil?
#   end

#   it "gets new" do
#     get :new
#     value(response).must_be :success?
#   end

#   it "creates fee" do
#     expect {
#       post :create, fee: { grade_id: fee.grade_id, price: fee.price }
#     }.must_change "Fee.count"

#     must_redirect_to fee_path(assigns(:fee))
#   end

#   it "shows fee" do
#     get :show, id: fee
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get :edit, id: fee
#     value(response).must_be :success?
#   end

#   it "updates fee" do
#     put :update, id: fee, fee: { grade_id: fee.grade_id, price: fee.price }
#     must_redirect_to fee_path(assigns(:fee))
#   end

#   it "destroys fee" do
#     expect {
#       delete :destroy, id: fee
#     }.must_change "Fee.count", -1

#     must_redirect_to fees_path
#   end
# end
