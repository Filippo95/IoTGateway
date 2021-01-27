# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def new_misuration
  	misuration = Misuration.last
    OrderMailer.new_misuration(misuration)
  end

  def send_alarm
    misuration = Misuration.last
    OrderMailer.send_alarm(misuration)
  end
end
