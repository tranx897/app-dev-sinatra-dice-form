require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @dice = params['dice'].to_i
  @sides = params['sides'].to_i

  @rolls = []

  @dice.times do
    die = rand(1..@sides)
    @rolls.push(die)
  end

  erb(:process_roll)
end
