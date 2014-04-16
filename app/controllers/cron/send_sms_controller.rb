class Cron::SendSmsController < ApplicationController

  include Cron::SendSmsHelper

  def index

    sms_array = SmsData.where('id_in_service = ?', 0)
    sms_array.each do |sms|

      sms_service = SmsService.find(sms.sms_service_id)

      if sms_service.service_type == 1

        responce = send_sms_to_smsaero(sms, sms_service).body
        id_in_service = responce.delete '=accepted'

        if responce.include? '=accepted'
          SmsData.update(
              sms.id,
              id_in_service: id_in_service
          )

        end


      end

    end

    # render text: x
    render nothing: true
  end

end