Tag.destroy_all 
Picture.destroy_all
[1,2,3,4,5].each do |num|
    User.create(
      username:"user#{num}",
      email: "user#{num}@example.com",
      password: "test123"
    )
end
["Nature", "NYC", "Art", "Humor"].each do |tag_name|
  Tag.create(name: tag_name)
end

#https://www.sealswcc.com/images/photo/seal/large/navy-seal-photo-069.jpg
url = "https://upload.wikimedia.org/wikipedia/commons/d/da/Tahoe_North_Shore_from_the_East_Shore.jpg"
   
Picture.create(
  image_url: url,
  title: "Lake Tahoe",
  user_id: User.first.id
)

Comment.create(content: "Cool!")