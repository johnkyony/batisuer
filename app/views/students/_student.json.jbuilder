json.extract! student, :id, :name, :surname, :image_data, :parent_id, :created_at, :updated_at
json.url student_url(student, format: :json)