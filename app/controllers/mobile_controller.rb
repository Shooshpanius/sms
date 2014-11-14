class MobileController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def get_unsend
  end
end
