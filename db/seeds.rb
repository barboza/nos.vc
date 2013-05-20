# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed { name: or created alongside the db with db:setup }.
#
# Examples:
#
#   cities = City.create{ name: [{ :name => 'Chicago' }, { :name => 'Copenhagen' }] }
#   Mayor.create{ name: :name => 'Daley', :city => cities.first }
Category.create( name: [
  { name: 'Stockolm' },
  { name: 'Goteborg' },
  { name: 'Malmö' },
  { name: 'Uppsala' },
  { name: 'Orebro' },
  { name: 'Vasteras' },
  { name: 'Linköping' },
  { name: 'Helsinborg' },
  { name: 'Jonkoping' },
  { name: 'Norrköping' }]);
