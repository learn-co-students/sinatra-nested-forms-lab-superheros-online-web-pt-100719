require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end

    post "/teams" do
        #@team = Team.new(params["team"]["name"], params["team"]["motto"])
        
        # params["team"]["members"].each do |hero_hash|
        #     SuperHero.new(hero_hash)
        #     binding.pry
        # end

        #@super_heroes = SuperHero.all
        erb :team
    end

end
