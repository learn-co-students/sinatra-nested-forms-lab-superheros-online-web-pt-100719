require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    get '/team/:id' do
      @team = Team.find(params[:id])
      erb :team
    end

    get '/super_hero/:id' do
      @hero = Hero.find(params[:id])
      erb :super_hero
    end

    get '/teams' do
      @teams = Team.all
      erb :teams
    end

    post '/teams' do
      team = params[:team]
      @team = Team.new(name: team[:name], motto: team[:motto])
      team[:heroes].each { |hero_data|
        hero = Hero.new(hero_data)
        hero.team = @team
        hero.save
      }

      redirect to "/team/#{@team.id}"
    end

end