require 'rails_helper'

RSpec.describe Person, type: :model do 
  it 'Calculate the age of the person' do
    person = Person.create(name: 'Felipe', date_of_birth: '9-2-1996')

    expect(person.age).to eq 23
  end

  it 'Calculate the amount of the persons monthly animal expenses' do
    person = Person.create(name: 'Felipe', date_of_birth: '9-2-1996')
    Animal.create(name: 'Pé de Pano', monthly_cost: 200.10, animal_kind: 'Cavalo', person_id: person.id)
    Animal.create(name: 'Cão', monthly_cost: 50.15, animal_kind: 'Gato', person_id: person.id)

    expect(person.animals_cost).to eq 250.25
  end
end
