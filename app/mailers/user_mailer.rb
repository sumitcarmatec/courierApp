class UserMailer < ApplicationMailer

  def send_to_sender sender, courier
    @sender = sender
    @courier = courier
    mail(to: @sender.email, subject: "Courier Info") do |format|
      format.html{ render 'user_mailer/send_to_sender'}
    end
  end

  def send_to_receiver receiver, courier
    @receiver = receiver
    @courier = courier
    mail(to: @receiver.email, subject: "Courier Info") do |format|
      format.html{ render 'user_mailer/send_to_receiver'}
    end
  end

end