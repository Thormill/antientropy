#coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Quest.create(:title => 'Беги за белым кроликом...', :text => 'Не все двери открываются сразу. Для некоторых нужны ключи, для других достаточно просто постучать, третьи, можно сломать.Однако для того, что бы войти в дверь, ее нужно найти. Это и будет первое задание.', :location_id => 1, :time_to_make => 180, :qtype => 1)
QuestType.create(:name => 'Online')
QuestType.create(:name => 'Offline')
User.create(:email => 'admin', :password => 'admin').activate!
Greetings.create(:text => 'Приветики')
Greetings.create(:text => 'Ку')
Greetings.create(:text => 'Приветствую')
Greetings.create(:text => 'Добрый день')
