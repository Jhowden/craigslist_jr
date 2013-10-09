require 'faker'

5.times do
  cates = Category.create(group: Faker::Company.name)
    5.times do
      cates.posts << Post.create(item: Faker::Lorem.word, price: rand(1..100), description: Faker::Lorem.sentences,
                  email: Faker::Internet.email)
    end 
end
