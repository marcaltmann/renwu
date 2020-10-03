# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([
  { name: 'Taxes 2019' },
  { name: 'FU hiring process' }
])

categories = Category.create([
  { name: 'Computer' },
  { name: 'Phone' },
  { name: 'Outside' }
])

tasks = Task.create([
  {
    content: 'Prepare tax declaration for transmit',
    project: projects[0],
    category: categories[0]
  },
  {
    content: 'Write email to D21 guy',
    project: projects[1],
    category: categories[0]
  }
])
