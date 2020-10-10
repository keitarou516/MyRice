require "csv"

CSV.foreach('db/csv/rice.csv', headers: true) do |row|
  Rice.create(
    name: row['name'],
    condition: row['condition'],
    hard: row['hard'],
    time: row['time'],
    stickiness: row['stickiness'],
    url: row['url']
  )
end