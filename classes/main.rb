require_relative 'app'
# rubocop:disable Metrics

def display_ui
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  user_choice = gets.chomp.to_i
  puts user_choice
  execute(user_choice)
end

def execute(user_choice)
  case user_choice

  when 1
    puts App.list_books
    display_ui

  when 2
    puts App.list_persons
    display_ui

  when 3
    App.create_person
    display_ui

  when 4
    App.create_book
    display_ui

  when 5
    App.create_rental
    display_ui

  when 6
    App.list_rentals
    display_ui

  when 7
    abort 'Thank you for using the app. Good bye for now !'

  else
    puts ' Invalid choice . Please enter a valid option'
    display_ui
  end
end
# rubocop:enable Metrics

puts 'Welcome to School Library App!'
display_ui
