# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Company.destroy_all
Income.destroy_all
Expense.destroy_all
Bill_payment.destroy_all
Subscription.destroy_all
Payment.destroy_all
Balance.destroy_all


usuario1 = User.create(first_name: "Matias", last_name: "Avaca", email: "avaca.matias1@gmail.com", encrypted_password: "123456", subscription: false)
usuario2 = User.create(first_name: "Cecilia", last_name: "Reynoso", email: "cecireynoso@gmail.com", encrypted_password: "123456", subscription: true)

compañia1_mati = Company.create(user_id: usuario1, name_company: "La Tienda de River", description: "Venta de todo sobre river.")
compañia2_ceci = Company.create(user_id: usuario2, name_company: "Las Flores", description: "Ventas florales.")
compañia3_ceci = Company.create(user_id: usuario2, name_company: "La Zapateria", description: "Ventas de Zapatos.")

subscription_ceci = Subscription.create(user_id: usuario2, init_date: "2023-3-18", end_date: "2024-3-18", price_sub: 50)

payment_ceci = Payment.create(subscription_id: subscription_ceci, payment_method: "Paypal")

income_mati = Income.create(company_id: compañia1_mati, item_name: "Remera de River", date: "2023-4-18", description: "Una Remera Original de River", amount: 100)
income_mati = Income.create(company_id: compañia1_mati, item_name: "Pantalon de River", date: "2023-4-19", description: "Un Pantalon Original de River", amount: 70)
income_mati = Income.create(company_id: compañia1_mati, item_name: "Campera de River", date: "2023-4-19", description: "Una Campera de River", amount: 140)

income_ceci = Income.create(company_id: compañia2_ceci, item_name: "Ramo de Rosas", date: "2023-4-18", description: "Una docena de rosas", amount: 100)
income_ceci = Income.create(company_id: compañia2_ceci, item_name: "Ramo de Margaritas", date: "2023-4-19", description: "Una docena de Margaritas", amount: 100)
income_ceci = Income.create(company_id: compañia2_ceci, item_name: "Ramo de Azuzenas", date: "2023-4-20", description: "Una docena de Azuzenas", amount: 100)
income_ceci = Income.create(company_id: compañia2_ceci, item_name: "Ramo de Rococo", date: "2023-4-21", description: "Una docena de Rococo", amount: 100)
income_ceci = Income.create(company_id: compañia2_ceci, item_name: "Ramo de Lilas", date: "2023-4-22", description: "Una docena de Lilas", amount: 100)

income_ceci2 = Income.create(company_id: compañia3_ceci, item_name: "Zapato rosa", date: "2023-4-18", description: "Un par de zapatos de mujer", amount: 25)
income_ceci2 = Income.create(company_id: compañia3_ceci, item_name: "Zapato azul", date: "2023-4-19", description: "Un par de zapatos de mujer", amount: 30)
income_ceci2 = Income.create(company_id: compañia3_ceci, item_name: "Zapato lila", date: "2023-4-20", description: "Un par de zapatos de mujer", amount: 50)
income_ceci2 = Income.create(company_id: compañia3_ceci, item_name: "Zapato blanco", date: "2023-4-21", description: "Un par de zapatos de mujer", amount: 20)
income_ceci2 = Income.create(company_id: compañia3_ceci, item_name: "Zapato negro", date: "2023-4-22", description: "Un par de zapatos de mujer", amount: 40)

expenses_mati = Expense.create(company_id: compañia1_mati, item_name: "Arriendo", date: "2023-4-18", description: "Gasto del arriendo", amount: 300)
expenses_mati = Expense.create(company_id: compañia1_mati, item_name: "Servicios básicos", date: "2023-4-19", description: "Gasto de luz, agua, gas.", amount: 70)
expenses_mati = Expense.create(company_id: compañia1_mati, item_name: "Publicidad", date: "2023-4-19", description: "Publicidad para darse a conocer", amount: 30)

expenses_ceci2 = Expense.create(company_id: compañia2_ceci, item_name: "Arriendo", date: "2023-4-18", description: "Gasto del arriendo", amount: 450)
expenses_ceci2 = Expense.create(company_id: compañia2_ceci, item_name: "Servicios básicos", date: "2023-4-19", description: "Gasto de luz, agua, gas.", amount: 100)
expenses_ceci2 = Expense.create(company_id: compañia2_ceci, item_name: "Publicidad", date: "2023-4-20", description: "Publicidad para darse a conocer", amount: 35)
expenses_ceci2 = Expense.create(company_id: compañia2_ceci, item_name: "Personal", date: "2023-4-21", description: "Pago de un trabajador.", amount: 400)
expenses_ceci2 = Expense.create(company_id: compañia2_ceci, item_name: "Fertilizantes", date: "2023-4-22", description: "Fertilizantes para las flores", amount: 70)

expenses_ceci3 = Expense.create(company_id: compañia3_ceci, item_name: "Arriendo", date: "2023-4-18", description: "Gasto del arriendo", amount: 450)
expenses_ceci3 = Expense.create(company_id: compañia3_ceci, item_name: "Servicios básicos", date: "2023-4-19", description: "Gasto de luz, agua, gas.", amount: 100)
expenses_ceci3 = Expense.create(company_id: compañia3_ceci, item_name: "Publicidad", date: "2023-4-20", description: "Publicidad para darse a conocer", amount: 35)
expenses_ceci3 = Expense.create(company_id: compañia3_ceci, item_name: "Personal", date: "2023-4-21", description: "Pago de un trabajador.", amount: 400)
expenses_ceci3 = Expense.create(company_id: compañia3_ceci, item_name: "Gastos de libreria", date: "2023-4-22", description: "Tijera, papel de envoltorio, hilos.", amount: 800)

expense_type_mati =
expense_type_mati =
expense_type_mati =

expense_type_ceci2 =
expense_type_ceci2 =
expense_type_ceci2 =
expense_type_ceci2 =
expense_type_ceci2 =

expense_type_ceci3 =
expense_type_ceci3 =
expense_type_ceci3 =
expense_type_ceci3 =
expense_type_ceci3 =
