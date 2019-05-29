# frozen_string_literal: true

# Create item's list for user
class ItemsList
  @@summer_list_ind = ["Рюкзак", "Спальник", "Каремат", "Сідачка", "Трекінгові палиці",
    "Чохол на рюкзак", "Куртка", "Теплі штани", "Основне взуття", "Змінне взуття", "Легкі штани",
    "Футболка", "Легка флісова кофта", "Дощовик", "Тепла флісова кофта", "Теплі шкарпетки",
    "Легкі рукавиці", "Легка шапка", "Білизна", "Шкарпетки", "Buff", "Термобілизна", "Набір посуду", "Ліхтарик" ]

  @@individual = ["Документи", "Аптечка", "Посуд", "Ліхтарик", "Гігієна",
    "Сонцезахисні окуляри", "Пляшка води"]

  @@summer_group = ["Намет", "Казанок", "Пальник", "Газовий балон", "Черпак", "Пилка",
    "Запальничка", "Ніж", "Карта", "Компас", "Смітєвий пакет"]

  @@list = {
    "Рюкзак" => [7, [], 0],
    "Спальник" => [7, [], 0],
    "Каремат" => [5, [], 0],
    "Сідачка" => [1, [], 0],
    "Трекінгові палиці" => [1, [], 0],
      "Чохол на рюкзак" => [1, [], 0],
      "Легка куртка" => [7, ["Куртка"], -1],
      "Куртка"  => [7, [], 0],
      "Теплі штани" => [7, ["Штани"], 1],
      "Легкі штани" => [7, ["Штани"], -1],
      "Шорти" => [7, ["Штани"], -1],
      "Основне взуття" => [7, ['Кросівки'], 0], #'Черевики'
      "Змінне взуття" => [7, ['Сандалі'], 0],
      "Футболка" => [5, [], 0],
      "Легка флісова кофта" => [5, ['Кофта'], -1],
      "Тепла флісова кофта" => [5, ['Кофта'], 1],
      "Дощовик" => [7, [], 0],
      "Теплі шкарпетки" => [5, ["Шкарпетки"], 1],
      "Шкарпетки" => [5, ["Шкарпетки"], 0],
      "Легкі рукавиці" => [3, ["Рукавиці"], -1],
      "Легка шапка" => [3, ["Головний убір"], -1],
      "Білизна" => [5, [], 0],
      "Buff" => [5, ["Пов'язка"], 0],
      "Термобілизна" => [3, [], 0],
      "Набір посуду" => [5, [], 0],
      "Ліхтарик" => [7, [], 0]
    }

    @@summer_group1 = {
      "Намет" => [7, [], 0],
      "Казанок" => [3, [], 0],
      "Пальник" => [5, [], 0],
      "Газовий балон" => [5, [], 0],
      "Черпак" => [1, [], 0],
      "Пилка" => [1, [], 0],
      "Запальничка"  => [7, [], 0],
       "Ніж" => [7, [], 0],
       "Карта" => [3, [], 0],
       "Компас" => [3, [], 0],
       "Смітєвий пакет" => [5, [], 0],
     }


  # def self.create_list(weights, imports, n)
  #   w = weights.count
  #   a = Array.new(w, 0)
  #   (0..n).each { |i| a[i] = Array.new(n, 0) }
  #   (1...n).each do |k|
  #     (1...w).each do |s|
  #       if s >= weights[k]
  #         a[k][s] = [a[k - 1][s], a[k - 1][s - weights[k]] + imports[k]].max
  #       else
  #         a[k][s] = a[k - 1][s]
  #       end
  #     end
  #   end

  #   self.findAns(n-1, w-1, weights, a, ans = [])
  # end

  def self.findAns(k, s, weights, a, ans)
    if a[k][s] == 0
      return
    end
    if a[k - 1][s] == a[k][s]
      findAns(k - 1, s, weights, a, ans)
    else
      findAns(k - 1, s - weights[k], weights, a, ans)
      ans.push(k)
    end
  end



  def self.create_list(season, all_items, bpw)
    items_list = Array.new(@@summer_list_ind.count + @@summer_group.count, nil)
    all_season_items = []

    puts ""
    all_items.each { |i| all_season_items.push(i) if (i.item.season_id == 1) } #|| i.item.season_id == 3) }
    # == season
    all_season_items.sort_by! { |i| i.item.object_importance.value }

    for i in 0...@@summer_list_ind.count
      type = ""
      if @@list[@@summer_list_ind[i]][1].empty?
        type = @@summer_list_ind[i]
      else
        type = @@list[@@summer_list_ind[i]][1][0]
      end
      item = self.search_item(type, all_season_items)
      items_list[i] = item
    end

    for i in 0...@@summer_group.count
      type = ""
      if @@summer_group1[@@summer_group[i]][1].empty?
        type = @@summer_group[i]
      else
        type = @@summer_group1[@@summer_group[i]][1][0]
      end
      item = self.search_item(type, all_season_items)
      items_list[@@summer_list_ind.count + i] = item
    end

    items_list.uniq!
    items_list.delete(nil)
    items_list.sort_by! { |i| i.item.weight }
    items_list.sort_by! { |i| i.item.object_importance.value }

    sum = self.weight_sum(items_list)
    while sum > bpw
      item = self.search_bad(items_list)
      items_list.delete_at(item)
      sum = self.weight_sum(items_list)
    end

    items_list

    # items_list.each do |i|
    #   puts "#{i.item.title} - #{i.item.weight} - #{i.item.object_importance.value}"
    # end
    # puts ""
    # puts "SUM #{sum}"
    # puts ""
  end

  def self.search_item(type, all_items)
    items = []
    all_items.each do |i|
      items.push(i) if i.item.item_type.title == type
    end
    self.min(items)
  end

  def self.min(items)
    min_weight = 100
    min_item = items[0]
    items.each do |i|
      if i.item.weight < min_weight
        min_weight = i.item.weight
        min_item = i
      end
    end
    min_item
  end

  def self.weight_sum(items)
    sum = 0
    items.each { |i| sum += i.item.weight }
    sum
  end

  def self.search_bad(items)
    min_i = 7
    max_w = -1
    item_i = 0
    for i in 0...items.count
      if (items[i].item.weight > max_w && items[i].item.object_importance.value < min_i)
        max_w = items[i].item.weight
        min_i = items[i].item.object_importance.value
        item_i = i
      end
    end
    item_i
  end

  def self.create_list_group(season, users)
    users_items_list = {} # user_items_list[:user_id] => [0, 0,0,0...]
    group_items_list = Array.new(@@summer_group1.count, 0)

    while !users.empty?
      user = users[self.find_max_bpw(users)] # user id

      items_list = Array.new(@@summer_list_ind.count + @@summer_group.count, nil)
      all_season_items = []

      all_items = User.find(user).user_available_items

      all_items.each { |i| all_season_items.push(i) if (i.item.season_id == 1) } # == season
      all_season_items.sort_by! { |i| i.item.object_importance.value }

      for i in 0...@@summer_list_ind.count
        type = ""
        if @@list[@@summer_list_ind[i]][1].empty?
          type = @@summer_list_ind[i]
        else
          type = @@list[@@summer_list_ind[i]][1][0]
        end
        item = self.search_item(type, all_season_items)
        items_list[i] = item
      end

      for i in 0...group_items_list.count
        if group_items_list[i] == 0
          type = ""
          if @@summer_group1[@@summer_group[i]][1].empty?
            type = @@summer_group[i]
          else
            type = @@summer_group1[@@summer_group[i]][1][0]
          end

          item = self.search_item(type, all_season_items)
          if !item.nil?
            items_list[@@summer_list_ind.count + i] = item
            group_items_list[i] = 1
          end
        end
      end

      items_list.uniq!
      items_list.delete(nil)
      items_list.sort_by! { |i| i.item.weight }
      items_list.sort_by! { |i| i.item.object_importance.value }

      sum = self.weight_sum(items_list)
      while sum > User.find(user).profile.bpws
        item = self.search_bad(items_list)
        items_list.delete_at(item)
        sum = self.weight_sum(items_list)
      end

      users_items_list[user] = items_list
      users.delete(user)
    end

    users_items_list

    # puts "USERS: "
    # puts ""
    # users_items_list.each do |user_id, items|
    #   user = User.find(user_id)
    #   puts "user: #{user_id}, first_name: #{user.profile.first_name} last_name: #{user.profile.last_name}"
    #   puts "bpw - #{user.profile.bpws}"
    #   puts "Items:"
    #   items.each do |i|
    #     puts "#{i.item.title} - #{i.item.weight} - #{i.item.object_importance.value}"
    #   end
    #   puts ""
    #   puts "Sum: #{weight_sum(items)}"
    #   puts ""
    #   puts ""
    # end

    # puts "GROUP ITEMS"
    # group_items_list.each do |i|
    #     puts i
    # end
  end

  def self.find_max_bpw(users)
    max_bpw = 0
    user_i = -1
    for i in 0...users.count
      if User.find(users[i]).profile.bpws > max_bpw
        max_bpw = User.find(users[i]).profile.bpws
        user_i = i
      end
    end
    user_i
  end

end
