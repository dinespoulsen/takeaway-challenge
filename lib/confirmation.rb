require 'twilio-ruby'

class Confirmation

  def initialize
    account_sid = 'ACa2a3c5def88970d08a87bc3e637e7d20'
    auth_token = '1c65438a0ef417767069b5acbd848f70'
    @customer = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_confirmation(message)
    @customer.messages.create(
      from: '+442033223757',
      to: '+447711581360',
      body: message
    )
  end


end