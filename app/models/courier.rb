class Courier < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  enum service_type: [:speed_post, :ragular]
  enum payment_mode: [:COD, :prepaid]
  enum status: [:sent, :in_transit, :delivered]

  validates :weight, :price, presence: true

  after_create :send_mail_to_users

  def send_mail_to_users
    UserMailer.send_to_sender(sender, self).deliver
    UserMailer.send_to_receiver(receiver, self).deliver
  end
end
