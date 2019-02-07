# Optional Enhancements

def num_check(num)
    num = num.to_i
    while num <= 0
        puts "The menu cannot be empty. Please enter the number of food items you would like in the menu."
        num = gets.chomp.to_i
    end
    return num
end

puts "Welcome to my Random Menu!"

# Instead of using hardcoded or predefined arrays, make your program accept user input. This user input will be utilized to generate the menu items. You'll need to prompt for and store a varying number of entries for each food-type array

puts "How many menu items do you want?"
menu_items = num_check(gets.chomp)

# ADJECTIVES
adjectives = Array.new
puts "\nEnter adjectives: "
i = 1
while i <= menu_items do
    puts "\nItem ##{i}:"
    item_name = gets.chomp
    adjectives << item_name
    i += 1
end

# COOKING METHODS
cooking_method = Array.new
puts "\nEnter cooking methods:"
j = 1
while j <= menu_items do
    puts "\nItem name ##{j}:"
    method = gets.chomp
    cooking_method << method
    j += 1
end

# INGREDIENTS
ingredients = Array.new
puts "\nEnter ingredients:"
k = 1
while k <= menu_items do
    puts "\nItem name ##{k}:"
    item_name = gets.chomp
    ingredients << item_name
    k += 1
end
puts ""

# Expand your solution to allow the user to determine how many items they'd like to see via user input
# Note: You will need to ensure that this user-chosen number of items is not larger than the number of items you have in your arrays.
l = 1
while l <= menu_items do
    ad = rand(0...adjectives.length)
    cm = rand(0...cooking_method.length)
    ing = rand(0...ingredients.length)
    
    puts "#{l}: #{adjectives[ad]} #{cooking_method[cm]} #{ingredients[ing]}."
    # Expand your solution to ensure that no descriptive term in a menu item is ever repeated. So if the first menu item is hot pan-fried dumplings, the the phrases hot, pan-friend and dumpling cannot individually be used in any other menu items
    adjectives.delete_at(ad)
    cooking_method.delete_at(cm)
    ingredients.delete_at(ing)
    l += 1
end
