json.array! @guests do |guest|
  json.name guest.name
  json.age guest.age
  json.favorite_color guest.favorite_color
  # json.gifts do |gift|
  #   json.gift gift.title
  # end
end