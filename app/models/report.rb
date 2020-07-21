Airrecord.api_key = ENV["AIRTABLE_API"]

class Report < Airrecord::Table
  self.base_key = "appX3h1ILJue9agrn"
  self.table_name = "GSN Victorian Government Reporting"

  def self.arrange_by_month
    all(view: "Default")
  end

  #Send KPI email update
  def self.email_update 
    UserMailer.reporting.deliver_now
  end

  def self.project_outcome
    all(filter: '{Category} = "Project Outcomes"')
  end

  def self.kpi
    all(filter: '{Category} = "KPIs"')
  end

  def self.recipient_commitments
    all(filter: '{Category} = "Recipient Commitments"')
  end

  def self.milestone_1
    all(filter: '{Category} = "Milestone 1"')
  end

  def self.milestone_2
    all(filter: '{Category} = "Milestone 2"')
  end

  def self.milestone_3
    all(filter: '{Category} = "Milestone 3"')
  end

  def self.milestone_4
    all(view: "Grid view", filter: '{Category} = "Milestone 4"')
  end

  def self.jobs
    all(filter: '{Category} = "Jobs"').first
  end

  def self.events
    all(filter: '{Category} = "Events"').first
  end

  def self.amount
    all(filter: '{Category} = "Amount"').first
  end

  def self.occupancy
    all(filter: '{Category} = "Occupancy"').first
  end
end


 