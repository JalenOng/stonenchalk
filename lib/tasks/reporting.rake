namespace :reporting do
  desc "TODO"
  task kpi: :environment do
    Result.email_update
    puts "done"
  end

end
