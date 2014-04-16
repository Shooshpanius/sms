class Cron::SendSmsController < ApplicationController

  include Cron::SendSmsHelper

  def index
    x = ''
    send_params = {}
    sms_array = SmsData.where('id_in_service = ?', 0)
    sms_array.each do |sms|

      sms_service = SmsService.find(sms.sms_service_id)

      if sms_service.service_type == 1

        responce = send_sms_to_smsaero(sms, sms_service).body
        if responce.include? '=accepted'
          SmsService.update(
            sms.id,
            sms_service_id = responce.delete '=accepted'
          )

        end


      end

    end

    render text: x

  end

end
