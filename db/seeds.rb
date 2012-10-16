# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Migrate author_name from quotes table to author table
#authors = Author.create([
#                          {name: 'Steve Jobs', slug: 'steve_jobs'},
#                          {name: 'David Frost', slug: 'david_frost'},
#                          {name: 'Wayne Gretzky', slug: 'wayne_gretzky'},
#                          {name: 'Arnold Palmer', slug: 'arnold_palmer'},
#                          {name: 'Henry Ford', slug: 'henry_ford'},
#                          {name: 'Timothy Ferris', slug: 'timothy_ferris'},
#                          {name: 'Eleanor Roosevelt', slug: 'eleanor_roosevelt'},
#                          {name: 'Robert Frost', slug: 'Robert Frost'},
#                          {name: 'Marilyn Monroe', slug: 'Marilyn Monroe'},
#                          {name: 'Oprah Winfrey', slug: 'oprah_winfrey'},
#                          {name: 'C.S. Lewis', slug: 'cs_lewis'},
#                          {name: 'Albert Einstein', slug: 'albert_einstein'},
#                          {name: 'Theodore Roethke', slug: 'theodore_roethke'},
#                          {name: 'Walt Disney', slug: 'walt_disney'},
#                          {name: 'Bill Cosby', slug: 'bill_cosby'},
#                          {name: 'Mark Twain', slug: 'mark_twain'},
#                          {name: 'Arnold Palmer', slug: 'arnold_palmer'},
#                          {name: 'Mahatma Gandhi', slug: 'mahatma_gandhi'},
#                          {name: 'Ernest Hemingway', slug: 'ernest_hemingway'},
#                          {name: 'Maya Angelou', slug: 'maya_angelou'},
#                          {name: 'Braveheart', slug: 'braveheart'},
#                          {name: 'Jillian Michaels', slug: 'illian_michaels'},
#                          {name: 'Dr. Seuss', slug: 'dr_seuss'},
#                          {name: 'John Lennon', slug: 'john_lennon'}
#                        ])

#update quotes table to populate author_id from author table
quotes = Quote.all
quotes.each do |q|
  author_of_this_quote = Author.find_by_name(q.author_name)
  unless author_of_this_quote.nil?
    q.author_id = author_of_this_quote.id
    q.save
  end
end