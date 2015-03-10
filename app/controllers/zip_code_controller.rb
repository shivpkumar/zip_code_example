class ZipCodeController < ApplicationController
  def new; end

  def check
    # In this example, I'm just using a simple Array, but if you wanted to use
    # a DB table, you'd do something like: ZipCode.all.map(&:zip_code), assuming
    # your model is called ZipCode and the field that contains the zip code in the
    # DB table is called zip_code
    valid_zip_codes = ['94123', '60523']

    if valid_zip_codes.include?(params['zip_code'])
      redirect_to success_path
    else
      # This uses Rails flash messages to display an alert on the root page
      # http://guides.rubyonrails.org/action_controller_overview.html#the-flash
      redirect_to root_url, alert: 'Invalid zip code'
    end
  end

  def success; end
end
