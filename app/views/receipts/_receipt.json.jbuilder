json.extract! receipt, :id, :student_id, :amount, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)