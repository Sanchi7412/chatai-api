# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chats = [
  ["ちわ！", 0],
  ["hello", 1],
  ["world", 2]
]

chats.each do |message, ai_type|
  Chat.create(message: message, ai_type: ai_type)
end