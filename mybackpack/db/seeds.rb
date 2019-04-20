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

Article.create(title: 'This is first article', text: lorem, source:
  'https://uk.lipsum.com/feed/html', published: true)
Article.create(title: 'This is second article', text: lorem, source:
  'https://uk.lipsum.com/feed/html', published: true)
Article.create(title: '333', text: '33333333', source:
  'https://uk.lipsum.com/feed/html')
