require 'sendgrid-ruby'
include SendGrid

namespace :reporting do
  desc "TODO"

  task update_occupancy: :environment do
    if Date.today.month != Date.today.prev_day.month && Date.today == Date.today.beginning_of_quarter
      total_companies = Company.total
      quarters = [ "Jan - Mar", "Apr - June", "July - Sept", "Oct - Dec"]
      quarter = ((Time.now.prev_day.month - 1) / 3) + 1

      result = Result.new("Month" => "Quarter #{quarter} ( #{quarters[quarter - 1]} ) #{Date.today.prev_day.year}", "Number of Paying Residents" => total_companies)
      result.save
    end
    puts "done"
  end

  task update_monthly: :environment do
    if Date.today.month != Date.today.prev_day.month
      total_companies = Company.total

      occupancy = Occupancy.new("Month" => Date.today.strftime("%B %Y"), "Number of Paying Residents" => total_companies)
      occupancy.save
    end
    puts "done"
  end

  task send_email: :environment do

    if Date.today == Date.parse(ENV['DUE_DATE1']) || Date.parse(ENV['DUE_DATE2']) || Date.parse(ENV['DUE_DATE3'])
      from = Email.new(email: 'grantreporting@stoneandchalk.com.au')
      to = Email.new(email: ENV['MAILTO'])
      subject = 'Stone & Chalk GSN Victorian Government Reporting'
      content = Content.new(type: 'text/html', value: '<p>Hi,</p><p>This is the latest update on <a href="https://melbreport.stoneandchalk.com.au">Stone & Chalk GSN Victorian Government Reporting.</a></p><p>Thank You</p>')
      
      mail = Mail.new(from, subject, to, content)

      sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
      response = sg.client.mail._('send').post(request_body: mail.to_json)
      puts response.status_code
      puts response.body
      puts response.headers
    end
  end
end
