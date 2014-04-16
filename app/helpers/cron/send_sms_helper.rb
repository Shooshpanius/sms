module Cron::SendSmsHelper

  require "uri"
  require "net/http"
  require 'digest/md5'

  def send_sms_to_smsaero(sms, sms_service)

    # send_params = {
    #     user: sms_service.login,
    #     password: sms_service.password,
    #     to: '7'+sms.phone.to_s,
    #     text: sms.text,
    #     from: sms_service.from,
    #     from2: sms_service.from2d
    # }

    send_params = {
        'user' => sms_service.login,
        'password' => Digest::MD5.hexdigest(sms_service.password),
        'to' => '7'+sms.phone.to_s,
        'text' => sms.text,
        'from' => sms_service.from,
        'from2' => '79250115444'
    }


    x = Net::HTTP.post_form(URI.parse('http://gate.smsaero.ru/send/'), send_params)
    return x
  end


end
