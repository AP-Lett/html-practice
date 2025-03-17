# Create sample posts
Post.create([
  { title: 'First Post', content: 'This is the first post.', author: 'Alice' },
  { title: 'Second Post', content: 'Learning Rails is fun!', author: 'Bob' },
  { title: 'Third Post', content: 'Rails makes web development easier.', author: 'Charlie' }
])

puts "Seeded #{Post.count} posts."

Location.create([
  { country: 'Russia', capital: 'Moscow', fun_fact: 'Largest country in the world, covering over 17 million square kilometers!' },
  { country: 'Saudi Arabia', capital: 'Riyadh', fun_fact: 'Saudi Arabia is home to the world’s largest oil reserves!' },
  { country: 'Iran', capital: 'Tehran', fun_fact: 'Iran is home to one of the world\'s oldest civilizations, dating back over 5,000 years!' }
])

puts "Seeded #{Location.count} locations."