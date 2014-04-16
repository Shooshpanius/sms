class Cron::SendSmsController < ApplicationController

  def index

    sms_array = SmsData.where('id_in_service = ?', 0)


    render text: sms_array.size

  end

end
