# #ROLE
# Role.create([
# 	{ name:'superadmin'},
# 	{ name:'admin'},
# 	{ name:'e-sklep'}
# 	])

# USER
# User.create([
# 	{ email:'superadmin@example.com', encrypted_password:'$2a$10$k0vJJxESIHk3vZ2zaC4ggeEq45hN3hT8IoSteQAvo/nrAmkZGI0oC' },
# 	{ email:'admin@example.com', encrypted_password:'$2a$10$k0vJJxESIHk3vZ2zaC4ggeEq45hN3hT8IoSteQAvo/nrAmkZGI0oC' },
# 	{ email:'jan@example.com', encrypted_password: '$2a$10$k0vJJxESIHk3vZ2zaC4ggeEq45hN3hT8IoSteQAvo/nrAmkZGI0oC' }
# 	])

#USERS ROLES
# Users_role.create([
# 	{ user_id: '1', role_id: '1' },
# 	{ user_id: '2', role_id: '2' },
# 	{ user_id: '3', role_id: '3' }
# 	])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
