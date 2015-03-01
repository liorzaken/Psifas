Given /the following patients exist/ do |patients_table|
  patients_table.hashes.each do |patient|
    Patient.create!(patient)
  end
end
