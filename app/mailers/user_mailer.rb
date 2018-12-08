require 'sendgrid-ruby'
include SendGrid

class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reporting.subject
  #
  def reporting
    from = Email.new(email: 'grantreporting@stoneandchalk.com.au')
    to = Email.new(email: ENV['MAILTO'])
    subject = 'Stone and Chalk GSN Government Reporting'
    # content = Content.new(type: 'text/plain', value: 'This is the latest update from Stone & Chalk GSN Victorian Government Reporting')
    content = Content.new(
      type: 'text/html',
      value: ApplicationController.render(
        template: "user_mailer/reporting.html.erb"
      ))
    
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    # attachments["KPI_Stone&Chalk.pdf"] = WickedPdf.new.pdf_from_string(
    #   render_to_string(pdf: 'KPI' + Time.now.strftime('%v %H:%M:%S').to_s, template: "results/pdf.html.erb")
 
    # mail to: ENV["MAILTO"], subject: "STONE AND CHALK KPI UPDATE"
  end
end
