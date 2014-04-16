module Cron::SendSmsHelper

  def send_sms_to_smsaero(sms, sms_service)

    params = {
        user: sms_service.login,
        password: sms_service.password,
        to: '7'+sms.phone,
        text: sms.text,
        from: sms_service.from,
        from2: sms_service.from2d
    }

  end


end
