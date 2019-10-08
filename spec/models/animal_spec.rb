require 'rails_helper'

RSpec.describe Animal, type: :model do
  context 'A person may have a swallow' do 
    it 'when have over 18 years old' do
    	person = Person.create(name: 'Felipe', date_of_birth: '10-1-1990')
      animal = Animal.create(name: 'Voador', animal_kind: 'Andorinha', person_id: person.id)
      expect(animal.save).to eq true
    end
  end

  context 'A person cant have a swallow' do 
    it "when have under 18 years old" do
    	person = Person.create(name: 'Marcelo', date_of_birth: '17-2-2010')
      animal = Animal.create(name: 'Voador', animal_kind: 'Andorinha', person_id: person.id)
      expect(animal.save).to eq false
    end
  end

  context 'A person can have a cat' do
    it 'when your name not starts with the letter A' do
      person = Person.create(name: 'Miguel', date_of_birth: '2010-11-01')
      animal = Animal.create(name: 'Cão', animal_kind: 'Gato', person_id: person.id)
      expect(animal.save).to eq true
    end
  end

  context 'A person cant have a cat' do
    it 'when your name starts with the letter A' do
      person = Person.create(name: 'Alberto', date_of_birth: '1995-11-01')
      animal = Animal.create(name: 'Cão', animal_kind: 'Gato', person_id: person.id)
      expect(animal.save).to eq false
    end
  end

  context 'A person cannot have new animals' do
    it 'when the total cost is already over 1000' do
      person = Person.create(name: 'Jonas', date_of_birth: '2015-11-01')
      first_animal = Animal.create(name: 'Cão', animal_kind: 'Gato', person_id: person.id, monthly_cost: 500.00)
      expect(first_animal.save).to eq true

      second_animal = Animal.create(name: 'Higuanín', animal_kind: 'Iguana', person_id: person.id, monthly_cost: 800.00)
      expect(second_animal.save).to eq false
    end
  end

  context 'A person may have a new animal' do
    it "when your monthly cost is less than 1000" do
      person = Person.create(name: 'Lucas', date_of_birth: '1995-23-05')
      first_animal = Animal.create(name: 'Bala no Alvo', animal_kind: 'Cavalo', person_id: person.id, monthly_cost: 250.00)
      expect(first_animal.save).to eq true

      second_animal = Animal.create(name: 'Canela Inchada', animal_kind: 'Cavalo', person_id: person.id, monthly_cost: 500.00)
      expect(second_animal.save).to eq true

      third_animal = Animal.create(name: 'Perry o Ornitorrinco', animal_kind: 'Ornitorrinco', person_id: person.id, monthly_cost: 122.00)
      expect(third_animal.save).to eq true

      fourth_animal = Animal.create(name: 'Kuzco', animal_kind: 'Lhama', person_id: person.id, monthly_cost: 60.00)
      expect(fourth_animal.save).to eq true
    end
  end
end
