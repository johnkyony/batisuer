# require "test_helper"

# describe StudentsController do
#   let(:student) { students :one }

#   it "gets index" do
#     get :index
#     value(response).must_be :success?
#     value(assigns(:students)).wont_be :nil?
#   end

#   it "gets new" do
#     get :new
#     value(response).must_be :success?
#   end

#   it "creates student" do
#     expect {
#       post :create, student: { image_data: student.image_data, name: student.name, parent_id: student.parent_id, surname: student.surname }
#     }.must_change "Student.count"

#     must_redirect_to student_path(assigns(:student))
#   end

#   it "shows student" do
#     get :show, id: student
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get :edit, id: student
#     value(response).must_be :success?
#   end

#   it "updates student" do
#     put :update, id: student, student: { image_data: student.image_data, name: student.name, parent_id: student.parent_id, surname: student.surname }
#     must_redirect_to student_path(assigns(:student))
#   end

#   it "destroys student" do
#     expect {
#       delete :destroy, id: student
#     }.must_change "Student.count", -1

#     must_redirect_to students_path
#   end
# end
