Airrecord.api_key = ENV["AIRTABLE_API"]


class Result < Airrecord::Table
  self.base_key = "appX3h1ILJue9agrn"
  self.table_name = "KPIs"

  def self.arrange_by_month
    all(view: "default")
  end

end
