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

# a1 = Article.create(title: 'This is first article', text: lorem, source:
#   'https://uk.lipsum.com/feed/html', published: true)
# a2 = Article.create(title: 'This is second article', text: lorem, source:
#   'https://uk.lipsum.com/feed/html', published: true)
# Article.create(title: '333', text: '33333333', source:
#   'https://uk.lipsum.com/feed/html')

c1 = ArticleCategory.create(title: 'Food')
c2 = ArticleCategory.create(title: 'Backpack')

# ArticlesCategory.create(article_id: a1.id, article_category_id: c1.id)
# ArticlesCategory.create(article_id: a1.id, article_category_id: c2.id)
# ArticlesCategory.create(article_id: a2.id, article_category_id: c1.id)

ft1 = FoodType.create(title: 'Суха')
ft2 = FoodType.create(title: 'Сублімована')
FoodType.create(title: 'Сира')
FoodType.create(title: 'Сушена')

fc1 = FoodCategory.create(title: 'Каша')
fc2 = FoodCategory.create(title: 'Суп')
FoodCategory.create(title: 'Консерва')
FoodCategory.create(title: 'Овочі')
FoodCategory.create(title: 'Фрукти')
FoodCategory.create(title: 'Солодощі')
FoodCategory.create(title: 'Сухофрукти')
FoodCategory.create(title: 'Горіхи')
FoodCategory.create(title: "М'ясо")

p1 = Producer.create(title: 'ЇDLO', description: 'ЇDLO text')
p2 = Producer.create(title: 'ЇЖА', description: 'ЇЖА')
p3 = Producer.create(title: 'Gregory', description: "Gregory - американська компанія з виробництва рюкзаків з індивідуальною посадкою по фігурі і з бездоганною якістю виконання. Рюкзаки Gregory забезпечують ідеальний розподіл навантаження на плечі і стегна людини за допомогою унікальної системи підвіски")
Producer.create(title: 'Marmot', description: "Ідея Marmot виникла в квітні 1971 на льодяних полях Джуно, на Алясці. Майбутні гляціологи, студенти університету Санта-Круз Ерік Рейнолдс і Дейв Хантлі запропонували ідею створення Marmot Club.
Незважаючи на те, що час вони проводили весело, їм було холодно, сиро і незатишно в тому спорядженні, що вони використали. Хоча це спорядження було кращим на ринку в той час. Повернувшись в теплу Каліфорнію, вони вирішили, що зможуть створити новий вид одягу, в якому не буде холодно і сиро. Ерік і Дейв були впевнені в тому, що зроблять його краще, ніж інші, і доб'ються успіху на цьому терені.
Так з'явився Marmot Club. Головне правило клубу - кожен є президентом, тобто всі рівні. Щоб стати членом клубу, необхідно було піднятися на крижану вершину з іншим членом клубу. Інші правила були лише в тому, щоб підтримувати хорошу спортивну форму.")
Producer.create(title: 'Mountain Equipment', description: "Mountain Equipment - це британська компанія, що спеціалізується на розробці і виготовленні високотехнологічного одягу і спальних мішків для найсміливіших і суворих завдань. З 1961 одяг і спорядження Mountain Equipment побували і на Гімалайських вершинах, альпіністичних штурмах і в арктичних експедиціях, де досягли неперевершено рекордного успіху. Завдяки своїм подорожам, виробникам Mountain Equipment вдалось накопичити безцінний досвід, який дає їм ідеальну основу для створення справді функціонального одягу та туристичного спорядження. Адже вся продукція бренду розроблена так, що б впоратися з найбільш екстремальними умовами.")
p4 = Producer.create(title: 'Turbat', description: 'Turbat')
Producer.create(title: 'Nutrixxion', description: 'Nutrixxion')
Producer.create(title: 'Travellunch', description: 'Travellunch')
Producer.create(title: 'Trek’n Eat', description: 'Trek’n Eat')

Food.create(title: 'Каша з яловичиною', description: 'Каша з найсмачнішою яловичиною',
 source: 'http://idlo.com', caloric: 350, weight: 0.1, volume: 0.1, food_type_id: ft1.id,
 food_category_id: fc1.id, producer_id: p1.id)
Food.create(title: 'Картопля з яловичиною', description: 'Картопля з найсмачнішою яловичиною',
 source: 'http://idlo.com', caloric: 450, weight: 0.1, volume: 0.1, food_type_id: ft2.id,
 food_category_id: fc1.id, producer_id: p2.id)

st1 = SettlementType.create(title: 'Місто', abbreviation: 'м')
SettlementType.create(title: 'Село', abbreviation: 'с')
SettlementType.create(title: 'Селеще міського типу', abbreviation: 'смт')
st2 = SettlementType.create(title: 'Гора', abbreviation: 'г')
SettlementType.create(title: 'Полонина', abbreviation: 'пол')
SettlementType.create(title: 'Урощище', abbreviation: 'ур')
SettlementType.create(title: 'Озеро', abbreviation: 'о')
SettlementType.create(title: 'Річка', abbreviation: 'р')

c1 = Complexity.create(title: 'Легка', description: 'Дуже легка', value: 1)
c3 = Complexity.create(title: 'Середня', description: 'Середня', value: 3)
c7 = Complexity.create(title: 'Важка', description: 'Дуже важка', value: 7)

ch1 = Chain.create(title: 'Чорногора', description: "Чорногора (пол. Czarnohora, угор. Feketebérc) — найвищий гірський масив Українських Карпат, до нього належить г. Говерла, найвища точка України з висотою 2061 м. Розташований на схід від Полонинського Бескиду. Головний хребет простягається на довжину бл. 40 км між долинами річок Чорної Тиси на заході і Чорного Черемоша на сході.", complexity_id: c7.id)
ch2 = Chain.create(title: 'Мармароси', description: "Мармароський масив (Мармароські гори, Мармаоси) (рум. Munții Maramureșului)  — гірський масив у Східних Карпатах. Більша частина масиву лежить на території Румунії. У межах України (в Івано-Франківській та Закарпатській областях) розташовані його північні та північно-західні околиці, зокрема Чивчини і Рахівські гори (Гуцульські Альпи).
У 1990 р. північно-західна частина Марамороського масиву площею 8990 га увійшла до складу Карпатського біосферного заповідника. Вона розміщена в межах висот 750-1940 м н. р. м.", complexity_id: c7.id)
Chain.create(title: 'Свидівець', description: "Гірський масив Свидовець — один із системотворчих елементів давньольодовиково-високополонинських флішових ландшафтів Українських Карпат. Найближчими високогірними сусідами Свидовця є масив Буштул на півночі, Полонина Братківська на північному сході, Чорногора на південному сході (відмежована долиною Чорної Тиси), Полонина Красна (відмежована долиною Тересви) на заході.", complexity_id: c3.id)

rs = RouteStatus.create(title: 'Заплановано')
RouteStatus.create(title: 'Підкорюється')
RouteStatus.create(title: 'Завершено')

s1 = Settlement.create(title: 'Ворохта', description: "Ворохта — селище міського типу Яремчанської міськради Івано-Франківській області. Розміщене на висоті 850 метрів над рівнем моря, на річці Прут. Майже з усіх сторін оточена горами і лісами. Курорт Ворохта є центром підготовки українських спортсменів зі стрибків із трампліна, біатлону, лижних перегонів.", elevation: 956.5,
  settlement_type_id: st1.id, chain_id: ch1.id)
s2 = Settlement.create(title: 'Говерла', description: "Найвища точка України", elevation: 2081,
  settlement_type_id: st2.id, chain_id: ch1.id)
Settlement.create(title: 'Лазещина', description: "Лазещина — село в Рахівському районі Закарпатської області (Україна).", elevation: 706.0,
  settlement_type_id: st1.id, chain_id: ch1.id)

# route1 = Route.create(title: 'Чорногора', description: 'вложд влаж іл',
#   start_date: '2019-05-01 12:02:00', end_date: '2019-05-05 12:02:00', duration: 3,
#   chain_id: ch1.id, user_id: 1, settlement_dep: s1.id, settlement_arr: s1.id,
#   complexity_id: c3.id, route_status_id: s1.id)
# Route.create(title: "1111", description: "111111", start_date: "2019-05-01 12:02:00",
# end_date: "2019-05-01 12:02:00", duration: 5, chain_id: 1, user_id: 1,
# complexity_id: 2, publication: true, settlement_dep: 1, settlement_arr: 1, route_status_id: s1.id)
# RoutePlace.create(route_id: route1.id, settlement_id: s1.id)
# RoutePlace.create(route_id: route1.id, settlement_id: s2.id)

condition_list = [ 'Не займаюся спортом', 'Займаюся тільки сезонними видами спорту',
'Регулярно відвідую спортзал', 'Регулярно займаюся спортом']
condition_list.each do |title|
  PhysicalCondition.create(title: title)
end

Meal.create(title: 'Сніданок')
Meal.create(title: 'Обід')
Meal.create(title: 'Полуденок')
Meal.create(title: 'Вечеря')
Meal.create(title: 'Перекус')

season1 = Season.create(title: 'Літо')
season2 = Season.create(title: 'Зима')
season3 = Season.create(title: 'Міжсезоння')

oi1 = ObjectImportance.create(title: "Не обов'язкова", value: 1)
oi2 = ObjectImportance.create(title: 'Важлива', value: 5)
ObjectImportance.create(title: 'Необхідна', value: 5)

oc1 = ObjectCategory.create(title: 'Одяг')
oc2 = ObjectCategory.create(title: 'Кухня')
ObjectCategory.create(title: 'Спорядження')
ObjectCategory.create(title: 'Взуття')

ot1 = ItemType.create(title: 'Головні убори')
ot2 = ItemType.create(title: 'Куртка')
ot3 = ItemType.create(title: 'Кофта')
ItemType.create(title: 'Термобілизна')
ItemType.create(title: 'Рукавиці')
ItemType.create(title: 'Шорти')
ItemType.create(title: "Пов'язка")
ItemType.create(title: 'Штани')
ItemType.create(title: 'Футболки')
ItemType.create(title: 'Кросівки')
ItemType.create(title: 'Черевики')
ItemType.create(title: 'Сандалі')
ItemType.create(title: 'Пальник')
ItemType.create(title: 'Посуд')
ItemType.create(title: 'Рюкзак')
ItemType.create(title: 'Намет')
ItemType.create(title: 'Спальник')
ItemType.create(title: 'Каремат')
ItemType.create(title: 'Трекінгові палиці')
ItemType.create(title: 'Посуд')

wt1 = WeatherType.create(title: 'Сонячно')
wt2 = WeatherType.create(title: 'Вітряно')
WeatherType.create(title: 'Дощ')
WeatherType.create(title: 'Спека')
wt3 = WeatherType.create(title: 'Сніг')
wt4 = WeatherType.create(title: 'Холод')

item1 = Item.create(title: 'Куртка Alpine Pro Sardar 2', weight: 0.7, volume: 0.3, description: "Оновлена модель теплої та зручної чоловічої куртки для активного зимового відпочинку та повсякденного використання. Має проклеєні шви, всі блискавки — водонепроникні. Для додаткової зручності на рукавах передбачені петельки для швидкого роздягання. Виготовлена із водо- та вітронепроникних матеріалів, має скі-пас кишеню на рукаві, внутрішню кишеню для окулярів та кишеню під ключі. Кишені для рук — додатково утеплені. Завдяки мембрані куртка забезпечує високий ступінь захисту від несприятливих погодніх умов
Призначення: гірськолижний відпочинок, хайкінг, подорожі, повсякденне використання",
  source: 'https://www.gorgany.com/kurtka-alpine-pro-sardar-2.html', individualy: true, object_category_id: oc1.id, item_type_id: ot2.id, object_importance_id: oi2.id, season_id: season2.id, producer_id: p2.id)
ItemsWeatherType.create(item_id: item1.id, weather_type_id: wt3.id)
ItemsWeatherType.create(item_id: item1.id, weather_type_id: wt2.id)
ItemsWeatherType.create(item_id: item1.id, weather_type_id: wt4.id)

item2 = Item.create(title: 'Куртка Salewa Puez 2 PTX', weight: 0.650, volume: 0.3, description: "Куртка Puez від виробника Salewa є міцною курткою із водонепроникною і дихаючою мембраною Powertex. Вона розроблена, щоб забезпечити функціональну простоту і захист для піших прогулянок і походів у гори.
Куртка має водонепроникні блискавки: передня, на нагрудній кишені та блискавки для вентиляції під пахвами. Матеріал куртки міцний та стійкий до зношування, усі шви — спаяні. Вона компактна у згорнутому стані і має екологічно чисте просочення DWR (Durable Water Resistant).",
  source: 'https://www.gorgany.com/kurtka-salewa-puez-2-ptx.html', individualy: true, object_category_id: oc1.id, item_type_id: ot2.id, object_importance_id: oi2.id, season_id: season1.id, producer_id: p3.id)


item3 = Item.create(title: 'Фліс Turbat Magura', weight: 0.25, volume: 0.3, description: "Фліс Magura створений для тих, кому до вподоби прості речі, які служать довго і найкраще виконують свою функцію. Теплий, легкий та зручний фліс захистить від холоду під час катання на лижах, велосипеді, у гірських походах. Займаючи мінімум місця у рюкзаку, він буде незамінним у справжніх довгих мандрах.
Призначений для туризму, піших та велопоходів, гірських сходжень, прогулянок у місті та лиж.",
  source: 'https://www.gorgany.com/flis-turbat-magura.html', individualy: true, object_category_id: oc1.id, item_type_id: ot3.id, object_importance_id: oi2.id, season_id: season3.id, producer_id: p4.id)



item4 = Item.create(title: 'Штани Turbat Arshytsya 2в1', weight: 0.4, volume: 0.3, description: "Зручні жіночі штани від українського виробника Turbat, які трансформуються в шорти. Легка та надзвичайно практична модель для походів і активного відпочинку, швидко сохнуть. Виготовлені з надійного зносостійкого матеріалу 100% нейлон, який робить тканину щільною та міцною, завдяки чому вона витримує різноманітні механічні пошкодження. Штани Arshytsya 2в1 мають зручні функціональні кишень для будь-яких корисних дрібниць.
Застосування: трекінг, походи в гори, подорожі, повсякденне використання в місті.",
  source: 'https://www.gorgany.com/kurtka-alpine-pro-sardar-2.html', individualy: true, object_category_id: oc1.id, item_type_id: ot2.id, object_importance_id: oi2.id, season_id: season2.id, producer_id: p2.id)




#country_list = [
#  [ "Germany", 81831000 ],
#  [ "France", 65447374 ],
#  [ "Belgium", 10839905 ],
#  [ "Netherlands", 16680000 ]
#]
#country_list.each do |name, population|
#  Country.create( name: name, population: population )
#end
