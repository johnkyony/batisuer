# require "test_helper"

# describe ParentsController do
#   let(:parent) { parents :one }

#   it "gets index" do
#     get :index
#     value(response).must_be :success?
#     value(assigns(:parents)).wont_be :nil?
#   end

#   it "gets new" do
#     get :new
#     value(response).must_be :success?
#   end

#   it "creates parent" do
#     expect {
#       post :create, parent: { name: parent.name, phone_number: parent.phone_number, surname: parent.surname }
#     }.must_change "Parent.count"

#     must_redirect_to parent_path(assigns(:parent))
#   end

#   it "shows parent" do
#     get :show, id: parent
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get :edit, id: parent
#     value(response).must_be :success?
#   end

#   it "updates parent" do
#     put :update, id: parent, parent: { name: parent.name, phone_number: parent.phone_number, surname: parent.surname }
#     must_redirect_to parent_path(assigns(:parent))
#   end

#   it "destroys parent" do
#     expect {
#       delete :destroy, id: parent
#     }.must_change "Parent.count", -1

#     must_redirect_to parents_path
#   end
# end
