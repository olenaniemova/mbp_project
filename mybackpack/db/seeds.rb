# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a posuere dolor. Quisque magna dui, accumsan sed diam vel, dictum bibendum magna. Proin at tristique ligula. Donec at pulvinar odio. Sed tempor mi vitae nulla pretium facilisis. Mauris cursus accumsan efficitur. Etiam eu facilisis magna.
Cras tempus, turpis lacinia auctor iaculis, eros turpis scelerisque orci, vitae lobortis dolor ex vestibulum mi. Proin a leo convallis arcu semper sollicitudin. Nam imperdiet nisi at volutpat condimentum. Proin tempus egestas enim sed efficitur. Nulla facilisi. Mauris et erat mattis mauris volutpat pretium et eget lorem. Nam eget gravida turpis. Quisque maximus libero tellus, ut hendrerit nibh venenatis sit amet. Mauris ac ex molestie, volutpat velit id, ullamcorper quam. Ut placerat est et viverra sollicitudin. Morbi feugiat turpis eros, vitae efficitur neque euismod et. Curabitur sapien velit, faucibus nec tempor sit amet, feugiat et eros. In consectetur porttitor ligula, in dapibus metus convallis quis. Suspendisse mollis risus justo, ac rutrum tortor suscipit sed.
Sed dictum augue semper eros congue, quis auctor arcu ultrices. Etiam pharetra augue ut lobortis vulputate. Duis hendrerit nibh ut sagittis ornare. Donec mollis varius diam, eget consectetur nunc consectetur vel. Integer lacinia lorem lectus, et scelerisque nisi placerat sed. Mauris imperdiet molestie justo vel hendrerit. Sed sit amet magna orci. Phasellus sed neque sit amet erat congue pharetra. Nulla pretium nisi at nunc fermentum rhoncus. Aliquam eleifend efficitur orci, nec placerat nisl dapibus quis. Donec auctor, est sit amet pellentesque tincidunt, odio sem vulputate velit, id eleifend dolor diam in est. Curabitur blandit est et lacus varius hendrerit. Nullam tempor nisi nec urna efficitur facilisis.'

a1 = Article.create(title: 'This is first article', text: lorem, source:
  'https://uk.lipsum.com/feed/html', published: true)
a2 = Article.create(title: 'This is second article', text: lorem, source:
  'https://uk.lipsum.com/feed/html', published: true)
Article.create(title: '333', text: '33333333', source:
  'https://uk.lipsum.com/feed/html')

c1 = ArticleCategory.create(title: 'Food')
c2 = ArticleCategory.create(title: 'Backpack')

ArticlesCategory.create(article_id: a1.id, article_category_id: c1.id)
ArticlesCategory.create(article_id: a1.id, article_category_id: c2.id)
ArticlesCategory.create(article_id: a2.id, article_category_id: c1.id)

ft1 = FoodType.create(title: 'Суха')
ft2 = FoodType.create(title: 'Сублімована')
FoodType.create(title: 'Сира')

fc1 = FoodCategory.create(title: 'Каша')
fc2 = FoodCategory.create(title: 'Суп')
FoodCategory.create(title: 'Консерва')

p1 = Producer.create(title: 'ЇDLO', description: 'ЇDLO text')
p2 = Producer.create(title: 'ЇDLO 2', description: 'ЇDLO tex 22222222222222 t')

Food.create(title: 'Каша з яловичиною', description: 'Каша з найсмачнішою яловичиною',
 source: 'http://idlo.com', caloric: 350, weight: 0.1, volume: 0.1, food_type_id: ft1.id,
 food_category_id: fc1.id, producer_id: p1.id)
Food.create(title: 'Картопля з яловичиною', description: 'Картопля з найсмачнішою яловичиною',
 source: 'http://idlo.com', caloric: 450, weight: 0.1, volume: 0.1, food_type_id: ft2.id,
 food_category_id: fc1.id, producer_id: p2.id)

#country_list = [
#  [ "Germany", 81831000 ],
#  [ "France", 65447374 ],
#  [ "Belgium", 10839905 ],
#  [ "Netherlands", 16680000 ]
#]
#country_list.each do |name, population|
#  Country.create( name: name, population: population )
#end
