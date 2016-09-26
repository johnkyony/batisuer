# require "test_helper"

# describe GradesController do
#   let(:grade) { grades :one }

#   it "gets index" do
#     get :index
#     value(response).must_be :success?
#     value(assigns(:grades)).wont_be :nil?
#   end

#   it "gets new" do
#     get :new
#     value(response).must_be :success?
#   end

#   it "creates grade" do
#     expect {
#       post :create, grade: { name: grade.name }
#     }.must_change "Grade.count"

#     must_redirect_to grade_path(assigns(:grade))
#   end

#   it "shows grade" do
#     get :show, id: grade
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get :edit, id: grade
#     value(response).must_be :success?
#   end

#   it "updates grade" do
#     put :update, id: grade, grade: { name: grade.name }
#     must_redirect_to grade_path(assigns(:grade))
#   end

#   it "destroys grade" do
#     expect {
#       delete :destroy, id: grade
#     }.must_change "Grade.count", -1

#     must_redirect_to grades_path
#   end
# end
