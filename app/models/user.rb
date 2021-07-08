class User < ApplicationRecord
  enum user_type: [:sender, :receiver]
  validates :full_name, :email, :address, :mobile_no, :pin_code, presence: true
end
