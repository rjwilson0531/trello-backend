puts "Seeding data"
# DatabaseCleaner.clean_with(:truncation)
Item.destroy_all
Card.destroy_all
card1 = Card.create(title:"To do")
card2 = Card.create(title:"In progress")
card3 = Card.create(title:"Complete")
card4 = Card.create(title:"Stretch features")

item1 = Item.create(title:"Edit Card Title onclick", content:"Content", card_id: card1.id)
item2 = Item.create(title:"Make close button (delete card)", content:"Content", card_id: card1.id)
item3 = Item.create(title:"Delete card confirmation + items", content:"Content", card_id: card1.id)
item4 = Item.create(title:"Items change card_id when swapping cards", content:"Content", card_id: card1.id)
item5 = Item.create(title:"View content on div.title click", content:"Content", card_id: card1.id)
item6 = Item.create(title:"Make edit button ", content:"Content", card_id: card1.id)
item7 = Item.create(title:"Edit button changed title", content:"Content", card_id: card1.id)
item8 = Item.create(title:"Comments", content:"Content", card_id: card4.id)
item9 = Item.create(title:"Cards can be sorted", content:"Content", card_id: card4.id)
item10 = Item.create(title:"Items can be sorted", content:"Content", card_id: card4.id)
item11 = Item.create(title:"Refactor", content:"Content", card_id: card4.id)
item12 = Item.create(title:"Create Card", content:"Content", card_id: card3.id)
item13 = Item.create(title:"Create Item", content:"Content", card_id: card3.id)
item14 = Item.create(title:"Setup Rails api", content:"Content", card_id: card3.id)
