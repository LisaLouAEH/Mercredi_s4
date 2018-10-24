# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |index|
    user = User.create!(name: "utilisator #{index}", last_name: "family#{index}", email: "email#{index}@exemple.com")
end

10.times do |index|
    article = Article.create!(titre: "sujet n°#{index}", content: "Nous allons parler de ... sujet n°#{index}")
end

5.times do |index|
    categorie = Category.create(name: "tag = #{index}")
end

15.times do |index|
    coment = Commentaire.create(content: "ahahahah l'article #{index}")
end