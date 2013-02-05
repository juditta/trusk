#ROLE
Role.create([
	{ name:'superadmin'},
	{ name:'admin'},
	{ name:'e-sklep'}
	])

# USER
User.create([
	{ email:'superadmin@example.com', encrypted_password:'password' },
	{ email:'admin@example.com', encrypted_password:'password' },
	{ email:'jan@example.com', encrypted_password: 'password' }
	])

#USERS ROLES
Users_role.create([
	{ user_id: '1', role_id: '1' },
	{ user_id: '2', role_id: '2' },
	{ user_id: '3', role_id: '3' }
	])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
