#!/usr/bin/env ruby

require "Twitter"

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "h5YAjuHDstpiXlCfbNKPZJuiN"
  config.consumer_secret     = "GUmiUPZasDCl15DxNit0kCzuGqrEpfoLhP50AMGzX4b0M7NAUq"
  config.access_token        = "4905994514-oJcPtMJLZ4jHGGRK0AtjigTgjs3Mhbzxqrgw98p"
  config.access_token_secret = "It's a secret!"
end

  # nouns= "I You He She It They We Sarah Susan Andy James Donald Nat David Gabriel"
  verbs = "run walk sleep jump sit stand think fight flee dive swim kick stab shoot"
  articles = "a at the to from with towards back"
  adjective = "nice mean stupid skinny fat smart sweet sleepy blonde freckled pink cold hot round bloated"
  object = "fence stairs bottle knife gun motorcycle flower house suit laptop gem soda wizard unicorn butterflies rainbows"
  adverbs = "quickly slowly cunningly thoroughly indiscriminantly magically quietly secretly violently peacefully eerily"

  # r_nouns = nouns.split[Random.rand(nouns.split.length)]
  r_verbs = verbs.split[Random.rand(verbs.split.length)]
  r_articles = articles.split[Random.rand(articles.split.length)]
  r_adjective = adjective.split[Random.rand(adjective.split.length)]
  r_object = object.split[Random.rand(object.split.length)]
  r_adverbs = adverbs.split[Random.rand(adverbs.split.length)]

  random = "You should " + r_adverbs + " " + r_verbs+ " " + r_articles + " " + r_adjective + " " + r_object + "."

  # random = array[Random.rand(array.length)]
  puts "Tell Confucius your problem (in 60 characters or less), he always have answer!"
  input = gets.chomp
  puts "Confucius says: #{random}"

  client.update("Problem: #{input}; Confucius say: #{random} #ConfuciusSay #badadvice")
