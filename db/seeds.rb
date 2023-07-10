puts "Seeding started"

fact = Fact.create(
  animal: "dolphin",
  habitat: "ocean",
  fact: "Dolphins are the fastest mammals on Earth",
  rank: 2,
)

fact = Fact.create(
  animal: "dog",
  habitat: "house or wild",
  fact: "There sense of smell is at least 40 times better than ours.",
  rank: 1,
)

fact = Fact.create(
  animal: "tiger",
  habitat: "South and Southeast Asia, China and Eastern Russia",
  fact: "The females in the pride do the hunting.",
  rank: 3,
)

puts "Seeding complete"
