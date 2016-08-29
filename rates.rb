require 'money'
require 'money/bank/google_currency'

Money::Bank::GoogleCurrency.ttl_in_seconds = 86400
Money.use_i18n = false
money = Money.new(200, "USD") # amount is in cents
money.exchange_to(:EUR)


puts "Las tasas son Hoy son: "

puts money