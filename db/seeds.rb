
Person.destroy_all
Animal.destroy_all

person = Person.create(name: 'Johnny Cash', document: '555555555', date_of_birth: "26-2-1932".to_date)
Animal.create(name: 'Pé de Pano', monthly_cost: 199.99, animal_kind: 'Cavalo', person_id: person.id)

person = Person.create(name: 'Sid Vicious', document: '555555555', date_of_birth: "10-5-1957".to_date)
Animal.create(name: 'Rex', monthly_cost: 99.99, animal_kind: 'Cachorro', person_id: person.id)

person = Person.create(name: 'Axl Rose', document: '555555555', date_of_birth: "6-2-1962".to_date)
Animal.create(name: 'Ajudante do Papai Noel', monthly_cost: 99.99, animal_kind: 'Cachorro', person_id: person.id)

person = Person.create(name: 'Joey Ramone', document: '555555555', date_of_birth: "19-5-1951".to_date)
Animal.create(name: 'Rex', monthly_cost: 103.99, animal_kind: 'Papagaio', person_id: person.id)

person = Person.create(name: 'Bruce Dickinson', document: '555555555', date_of_birth: "7-8-1958".to_date)
Animal.create(name: 'Flora', monthly_cost: 103.99, animal_kind: 'Lhama', person_id: person.id)

person = Person.create(name: 'Kurt Cobain', document: '555555555', date_of_birth: "20-2-1967".to_date)
Animal.create(name: 'Dino', monthly_cost: 177.99, animal_kind: 'Iguana', person_id: person.id)

person = Person.create(name: 'Elvis Presley', document: '555555555', date_of_birth: "17-8-2008".to_date)
Animal.create(name: 'Lassie', monthly_cost: 407.99, animal_kind: 'Ornitorrinco', person_id: person.id)
