# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.create(name: "Fiesta", model: "Ford", year: 2009) if Car.where(name: "Fiesta").count == 0
Car.create(name: "Gol", model: "Volkswagen", year: 2011) if Car.where(name: "Gol").count == 0
Car.create(name: "Civic", model: "Toyota", year: 2018) if Car.where(name: "Civic").count == 0
Car.create(name: "Onix", model: "Chevrolet", year: 2020) if Car.where(name: "Onix").count == 0
Car.create(name: "Kwid", model: "Renault", year: 2019) if Car.where(name: "Kwid").count == 0
Car.create(name: "Palio", model: "Fiat", year: 2017) if Car.where(name: "Palio").count == 0
Car.create(name: "HB20", model: "Hyundai", year: 2021) if Car.where(name: "HB20").count == 0
Car.create(name: "Sandero", model: "Renault", year: 2016) if Car.where(name: "Sandero").count == 0
Car.create(name: "Argo", model: "Fiat", year: 2018) if Car.where(name: "Argo").count == 0
Car.create(name: "Uno", model: "Fiat", year: 2008) if Car.where(name: "Uno").count == 0
Car.create(name: "EcoSport", model: "Ford", year: 2012) if Car.where(name: "EcoSport").count == 0
Car.create(name: "Tracker", model: "Chevrolet", year: 2013) if Car.where(name: "Tracker").count == 0
Car.create(name: "T-Cross", model: "Volkswagen", year: 2022) if Car.where(name: "T-Cross").count == 0
Car.create(name: "Corolla", model: "Toyota", year: 2014) if Car.where(name: "Corolla").count == 0
Car.create(name: "Jetta", model: "Volkswagen", year: 2018) if Car.where(name: "Jetta").count == 0
