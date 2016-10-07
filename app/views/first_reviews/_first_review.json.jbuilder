json.extract! first_review, :id, :user_id, :first_test_id, :info1, :created_at, :updated_at
json.url first_review_url(first_review, format: :json)