json.array!(@zombies) do |zombie|
  json.extract! zombie, :id, :name, :graveyard
  json.url zombie_url(zombie, format: :json)
end
