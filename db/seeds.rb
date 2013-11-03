require_relative '../app/models/note'
require 'faker'


20.times do 
  Note.create(note: Faker::Lorem.sentence(3))
end
