Sport.destroy_all

basket = Sport.create(name: "basketball")
running = Sport.create(name: "running")
foot = Sport.create(name: "football")

goals_number = Metric.new(name: 'number of goals', data_type: "goals")
goals_number.sport = foot
goals_number.save
assists_number = Metric.new(name: 'number of assists', data_type: "assists")
assists_number.sport = foot
assists_number.save


sprint_time = Metric.new(name: 'time for 100m', data_type: "time in seconds")
sprint_time.sport = running
sprint_time.save
marathon_time = Metric.new(name: 'time for 42kms', data_type: "time in hours")
marathon_time.sport = running
marathon_time.save


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
