class Animal < ApplicationRecord
  MIN_AGE_TO_ANDORINHA = 18
  MAX_CUST_TO_NEW_ANIMAL = 1000.00
  INVALID_LETTER_TO_CAT = 'a'

  enum animal_kind: [ 
    :Andorinha,
    :Cavalo, 
    :Cachorro, 
    :Gato,
    :Iguana,
    :Lhama,
    :Ornitorrinco,
    :Papagaio,
  ]

  belongs_to :person
  
  before_save :can_have_this_animal

  private
  
  def can_have_this_animal
    throw(:abort) unless person_able_to_new_animal?
    throw(:abort) if self.animal_kind == 'Andorinha' && !person_able_to_swallow?
    throw(:abort) if self.animal_kind == 'Gato' && !person_able_to_cat?
  end

  def person_able_to_swallow?
    self.person.age >= MIN_AGE_TO_ANDORINHA
  end

  def person_able_to_cat?
    self.person.name.first.downcase != INVALID_LETTER_TO_CAT
  end

  def person_able_to_new_animal?
    self.person.animals_cost < MAX_CUST_TO_NEW_ANIMAL
  end
end
