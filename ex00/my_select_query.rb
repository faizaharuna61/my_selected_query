require 'csv'

class MySelectQuery
  def initialize(csv_content)
    @rows = CSV.parse(csv_content, headers: true)
  end

  def where(column_name, criteria)
    matching_rows = @rows.select { |row| row[column_name] == criteria }
    matching_rows.map { |row| row.fields.join(',') }
  end
end


