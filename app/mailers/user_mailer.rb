require 'sendgrid-ruby'
include SendGrid

class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reporting.subject
  #
  def reporting
    # attachments["KPI_Stone&Chalk.pdf"] = WickedPdf.new.pdf_from_string(
    #   render_to_string(pdf: 'KPI' + Time.now.strftime('%v %H:%M:%S').to_s, template: "results/pdf.html.erb")
 
    # mail to: ENV["MAILTO"], subject: "STONE AND CHALK KPI UPDATE"
  end
end
