Airrecord.api_key = ENV["AIRTABLE_API"]

class Occupancy < Airrecord::Table
  self.base_key = "appX3h1ILJue9agrn"
  self.table_name = "Monthly Occupancy"

  def self.arrange_by_month
    all(view: "default")
  end
end