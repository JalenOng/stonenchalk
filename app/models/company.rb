Airrecord.api_key = ENV["AIRTABLE_API"]

class Company < Airrecord::Table
  self.base_key = "appX3h1ILJue9agrn"
  self.table_name = "Companies"

  def self.total
    sum = 0
    all.each do |company|
      sum += company["Number of Desks"] if company["Number of Desks"]
    end
    sum
  end

end
