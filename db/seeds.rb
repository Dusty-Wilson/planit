# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{email: "ariel@email.com", first_name: "Ariel", last_name: "Diamond", phone: "111-222-3333"},
				 {email: "fabi@email.com", first_name: "Fabi", last_name: "Castillo", phone: "555-666-7777"},
				 {email: "dusty@email.com", first_name: "Dusty", last_name: "Wilson", phone: "123-456-7890"},
				 {email: "jaimin@email.com", first_name: "Jaimin", last_name: "Patel", phone: "182-929-9080"},
				 {email: "annie@email.com", first_name: "Annie", last_name: "Baer", phone: "123-8383-1199"},
				 {email: "spiderman@email.com", first_name: "Peter", last_name: "Parker", phone: "878-010-9267"},
				 {email: "batman@email.com", first_name: "Bruce", last_name: "Wayne", phone: "888-999-0000"},
				 {email: "superman@email.com", first_name: "Clark", last_name: "Kent", phone: "732-237-7237"},
				 {email: "cplanit@planit.com", first_name: "Captain", last_name: "Planit", phone: "892-840-0087"}]

User.create!(users)

trips = [{name: "Save the world", description: "Just another day", location: "Metropolis", start_date: DateTime.new(2014,2,3), end_date: DateTime.new(2014,2,11), creator_id: 9},
				 {name: "Spring break", description: "Everyone needs a vacation", location: "Virginia Beach", start_date: DateTime.new(2010,4,7), end_date: DateTime.new(2010,4,15), creator_id: 8},
				 {name: "Ariel's Birthday", description: "Because today is a really convenient day to have a birthday", location: "DBC", start_date: DateTime.new(2014,6,19), end_date: DateTime.new(2014,6,20), creator_id: 1},
				 {name: "Lake House", description: "It's fourth of july!", location: "Vermont", start_date: DateTime.new(2012,7,1), end_date: DateTime.new(2012,7,15), creator_id: 9},
				 {name: "Clean up everything", description: "...that we broke saving the world", location: "Metropolis", start_date: DateTime.new(2014,2,13), end_date: DateTime.new(2014,2,20), creator_id: 7}]

Trip.create!(trips)


trip_participations = [{trip_id: 1, traveler_id: 6, transportation_type: "web", arrival_time: DateTime.new(2014,2,3,14,30,0), departure_time: DateTime.new(2014,2,10,10,45,0)},
											 {trip_id: 1, traveler_id: 7, transportation_type: "batmobile", arrival_time: DateTime.new(2014,2,3,18,30,0), departure_time: DateTime.new(2014,2,11,10,0,0)},
											 {trip_id: 1, traveler_id: 8, transportation_type: "flying", arrival_time: DateTime.new(2014,2,3,2,45,0), departure_time: DateTime.new(2014,2,10,10,45,0)},
											 {trip_id: 1, traveler_id: 9, transportation_type: "bike", arrival_time: DateTime.new(2014,2,3,20,30,0), departure_time: DateTime.new(2014,2,11,5,0,0)},
											 {trip_id: 1, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,2,3,15,0,0), departure_time: DateTime.new(2014,2,10,8,40,0)},
											 
											 {trip_id: 2, traveler_id: 8, transportation_type: "flying", arrival_time: DateTime.new(2010,4,7,14,30,0), departure_time: DateTime.new(2010,4,15,10,45,0)},
											 {trip_id: 2, traveler_id: 3, transportation_type: "plane", arrival_time: DateTime.new(2010,4,7,18,30,0), departure_time: DateTime.new(2010,4,15,10,0,0)},
											 {trip_id: 2, traveler_id: 4, transportation_type: "drive", arrival_time: DateTime.new(2010,4,7,2,45,0), departure_time: DateTime.new(2010,4,15,10,45,0)},

											 {trip_id: 3, traveler_id: 1, transportation_type: "train", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0)},
											 {trip_id: 3, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0)},
											 {trip_id: 3, traveler_id: 3, transportation_type: "walking", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0)},
											 {trip_id: 3, traveler_id: 4, transportation_type: "train", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0)},
											 {trip_id: 3, traveler_id: 5, transportation_type: "walking", arrival_time: DateTime.new(2014,6,19,8,0,0), departure_time: DateTime.new(2014,6,20,2,30,0)},

											 {trip_id: 4, traveler_id: 1, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0)},
											 {trip_id: 4, traveler_id: 2, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0)},
											 {trip_id: 4, traveler_id: 3, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0)},
											 {trip_id: 4, traveler_id: 4, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0)},
											 {trip_id: 4, traveler_id: 5, transportation_type: "car", arrival_time: DateTime.new(2012,7,1,14,30,0), departure_time: DateTime.new(2012,7,15,10,0,0)},

											 {trip_id: 5, traveler_id: 6, transportation_type: "web", arrival_time: DateTime.new(2014,2,13,14,30,0), departure_time: DateTime.new(2014,2,20,10,45,0)},
											 {trip_id: 5, traveler_id: 7, transportation_type: "batmobile", arrival_time: DateTime.new(2014,2,13,18,30,0), departure_time: DateTime.new(2014,2,10,10,0,0)},
											 {trip_id: 5, traveler_id: 8, transportation_type: "flying", arrival_time: DateTime.new(2014,2,14,2,45,0), departure_time: DateTime.new(2014,2,19,10,45,0)},
											 {trip_id: 5, traveler_id: 9, transportation_type: "bike", arrival_time: DateTime.new(2014,2,14,20,30,0), departure_time: DateTime.new(2014,2,20,5,0,0)},
											 {trip_id: 5, traveler_id: 2, transportation_type: "train", arrival_time: DateTime.new(2014,2,13,15,0,0), departure_time: DateTime.new(2014,2,20,8,40,0)}]

TripParticipation.create!(trip_participations)

activities = [{name: "fishing", description: "Woohoo, on a boat!", start_time: DateTime.new(2012,7,3,6,0,0), end_time: DateTime.new(2012,7,3,15,0,0), location: "lake", trip_id: 4, creator_id: 3},
							{name: "kayaking", description: "Woohoo, on a smaller boat!", start_time: DateTime.new(2012,7,4,10,0,0), end_time: DateTime.new(2012,7,4,14,0,0), location: "river", trip_id: 4, creator_id: 3},
							{name: "winning", description: "because we're superheroes", start_time: DateTime.new(2014,2,5,10,0,0), end_time: DateTime.new(2014,2,7,15,0,0), location:, trip_id: 1, creator_id: 7}]

Activity.create!(activities)

activity_participations = [{activity_id: 1, participant_id: 1},
													 {activity_id: 1, participant_id: 2},
													 {activity_id: 1, participant_id: 3},
													 {activity_id: 2, participant_id: 3},
													 {activity_id: 2, participant_id: 4},
													 {activity_id: 2, participant_id: 5},
													 {activity_id: 7, participant_id: 9},
													 {activity_id: 7, participant_id: 8},
													 {activity_id: 7, participant_id: 7},
													 {activity_id: 7, participant_id: 6}]

ActivityParticipation.create!(activity_participations)


