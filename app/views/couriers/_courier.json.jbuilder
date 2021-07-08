json.extract! courier, :id, :user_id, :weight, :service_type, :price, :payment_mode, :status, :created_at, :updated_at
json.url courier_url(courier, format: :json)
