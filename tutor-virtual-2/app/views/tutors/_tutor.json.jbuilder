json.extract! tutor, :id, :username, :internal_password, :name, :first_last_name, :second_last_name, :email, :country, :state, :city, :partner, :organization_code, :gender, :dob, :phone_number, :language, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
