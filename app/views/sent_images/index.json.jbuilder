json.array!(@sent_images) do |sent_image|
  json.extract! sent_image, :image_name, :date_sent, :quantity, :recipient, :size_of_image
  json.url sent_image_url(sent_image, format: :json)
end