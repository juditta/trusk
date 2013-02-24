
# UNIT
Unit.create([
	{ name: 'szt' },
	{ name: 'op' },
	{ name: 'kg' }
	])

#CONTRACTOR
Contractor.create([ 
	{ type_contractors: 'dostawca', short_name: 'Kowal', name: 'Kowal', code: '32098', city: "Krakow", street: 'Fredry 4', 
		pesel: '123456789', regon: '123456789', phone1: '321456678', phone2: '456765342', fax: '457876567', 
		email: 'kowal@gmail.com', sale: 'przelew', maturity: '14', discount: '5', bank_account:'23168394208469787896722334'
	},
	{ type_contractors: 'odbiorca', short_name: 'Fikus', name: 'F.H.U Fikus', code: '54098', city: "Krakow", street: 'Konieczna 4', 
		pesel: '987456789', regon: '876556789', phone1: '892356678', phone2: '987265342', fax: '457876567', 
		email: 'fikus@gmail.com', sale: 'przelew', maturity: '14', discount: '5', bank_account:'98768394208469787896722334'
	}
	])

#DELIVER
Delivery.create([
	{ contractor_id: '1', date_delivery:'20.01.2013', date_order: '18.01.2013', number: 'PZ/2013/1'},
	{ contractor_id: '1', date_delivery:'21.01.2013', date_order: '19.01.2013', number: 'PZ/2013/2'},
	{ contractor_id: '2', date_delivery:'20.01.2013', date_order: '18.01.2013', number: 'PZ/2013/3'},
	{ contractor_id: '2', date_delivery:'21.01.2013', date_order: '19.01.2013', number: 'PZ/2013/4'}
	])

#DELIVER_PRODUCTS
DeliveryProduct.create([
	{ delivery_id: '1', product_id: '1', price: '2.00', quantity: '30'},
	{ delivery_id: '1', product_id: '2', price: '4.00', quantity: '40'},
	{ delivery_id: '1', product_id: '3', price: '2.00', quantity: '15'},
	{ delivery_id: '2', product_id: '1', price: '2.00', quantity: '30'},
	{ delivery_id: '2', product_id: '2', price: '4.00', quantity: '40'},
	{ delivery_id: '3', product_id: '3', price: '2.00', quantity: '15'},
	{ delivery_id: '3', product_id: '1', price: '2.00', quantity: '30'},
	{ delivery_id: '4', product_id: '2', price: '4.00', quantity: '20'},
	{ delivery_id: '4', product_id: '3', price: '2.00', quantity: '55'}
	])

#PRODUCT
Product.create([
	{ type_product: 'material', index: 'm-o-m', name: 'malina', measure: '', unit_basic:'3', unit_sale:'3', converter: '1', 
		vat:'3', barcode:'13267876813', expiration_date: '2', quantity_price:'3.00', retial_price: '3.50', 
		price_a: '2.90', price_b: '2.80', state_min: '100', state_max: '500', state: '200', spree_products_id: ''},
	{ type_product: 'material', index: 'm-o-w', name: "wisnia", measure: '', unit_basic:'3', unit_sale:'3', converter: '1', 
		vat:'3', barcode:'54367876813', expiration_date: '2', quantity_price:'4.00', retial_price: '4.50', 
		price_a: '3.90', price_b: '3.80', state_min: '100', state_max: '500', state: '200', spree_products_id: ''},
	{ type_product: 'material', index: 'm-op-s0.5', name: "sloik 0.5", measure: '', unit_basic:'1', unit_sale:'1', converter: '1', 
		vat:'3', barcode:'87687876813', expiration_date: '', quantity_price:'0.50', retial_price: '0.60', 
		price_a: '0.45', price_b: '0.43', state_min: '100', state_max: '1000', state: '200', spree_products_id: ''}
	
	])
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

