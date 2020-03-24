puts "Seeding data"

Card.delete_all
Item.delete_all

card1 = Card.create(title:"To do")
card2 = Card.create(title:"In progress")
card3 = Card.create(title:"Complete")

item1 = Item.create(title:"Do a 360 Dab", content:"Dab Content", card_id: card1.id)
item2 = Item.create(title:"Finish MVP", content:"A lot of stuff to do", card_id: card1.id)
item3 = Item.create(title:"Get hired at Google", content:"Easy.", card_id: card2.id)