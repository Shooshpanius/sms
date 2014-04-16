class Cron::SendSmsController < ApplicationController

  include Cron::SendSmsHelper

  def index

    sms_array = SmsData.where('id_in_service = ?', 0)
    sms_array.each do |sms|

      sms_service = SmsService.find(sms.sms_service_id)

      if sms_service.service_type == 1

        send_sms_to_smsaero(sms, sms_service)

      end


    end

    render text: sms_array.size

  end

end
