json.array! @ages do |age|
  json.id age.id
  json.age age.age
  json.season age.season
end