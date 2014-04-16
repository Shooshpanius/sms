class Cron::SendSmsController < ApplicationController

  include Cron::SendSmsHelper

  def index
    x = ''
    send_params = {}
    sms_array = SmsData.where('id_in_service = ?', 0)
    sms_array.each do |sms|

      sms_service = SmsService.find(sms.sms_service_id)

      if sms_service.service_type == 1

        x = send_sms_to_smsaero(sms, sms_service).body
        # send_params = {
        #     user: sms_service.login,
        #     password: sms_service.password,
        #     to: '7'+sms.phone.to_s,
        #     text: sms.text,
        #     from: sms_service.from,
        #     from2: sms_service.from2d
        # }
      end


    end

    render text: x

  end

end
