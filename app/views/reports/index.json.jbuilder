json.array!(@reports) do |report|
  json.extract! report, :id, :date, :patientId, :reporter, :background, :description, :conclusion, :nextDate
  json.url report_url(report, format: :json)
end
