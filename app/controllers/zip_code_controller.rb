class ZipCodeController < ApplicationController
  def new; end

  def check
    valid_zip_codes = ['94123', '60523']

    if valid_zip_codes.include?(params['zip_code'])
      head :ok
    else
      head :not_acceptable
    end
  end
end
