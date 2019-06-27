json.pokemon do
  json.partial! "pokemon", pokemon: @pokemon

  json.extract! @pokemon, :attack, :defense, :moves, :poke_type, :item_ids
  
  json.set! :items do
    @pokemon.items.each do |item|
      json.set! item.id do
        json.extract! item, :id, :name, :happiness, :image_url, :price
      end
    end
  end

end #pokemon

