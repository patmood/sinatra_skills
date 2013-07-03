require 'faker'

skill_pool = []
formal_option = [true,false]
experience = [1,2,3,4,5]



# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  skill_pool << Skill.create!(:name => skill, :context => 'technical')
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  skill_pool << Skill.create!(:name => skill, :context => 'creative')
end

# TODO: create associations between users and skills
# create a few users
User.create!(:name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password', :skills => [skill_pool.sample,skill_pool.sample])
5.times do
  User.create!(:name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password', :skills => [skill_pool.sample,skill_pool.sample])
end


Ability.all.each do |ability|
  ability.years = experience.sample
  ability.formal = formal_option.sample
  ability.save!
end
