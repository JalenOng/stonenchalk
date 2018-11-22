namespace :reporting do
  desc "TODO"
  task kpi: :environment do
    Result.email_update
    puts "done"
  end

  task update_occupancy: :environment do

    total_companies = Company.total
    result = Result.new("Month" => Date.today.strftime("%B %Y"), "Number of Paying Residents" => total_companies)
    result.save
    puts "done"

  end
end
