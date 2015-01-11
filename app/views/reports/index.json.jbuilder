json.array!(@reports) do |report|
  json.extract! report, :id, :date, :patientId, :reporter, :background, :description, :conclusion
  json.url report_url(report, format: :json)
end
