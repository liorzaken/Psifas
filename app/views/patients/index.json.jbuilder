json.array!(@patients) do |patient|
  json.extract! patient, :id, :patientId, :birthDate, :fullName, :address
  json.url patient_url(patient, format: :json)
end
