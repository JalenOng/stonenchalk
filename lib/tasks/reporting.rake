namespace :reporting do
  desc "TODO"
  task kpi: :environment do
    Result.email_update
    puts "done"
  end

  task update_occupancy: :environment do
    if Date.today.month != Date.today.next_day.month
      total_companies = Company.total
      result = Result.new("Month" => Date.today.strftime("%B %Y"), "Number of Paying Residents" => total_companies)
      result.save
    end
    puts "done"
  end
end
