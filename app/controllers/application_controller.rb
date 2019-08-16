require 'sinatra/base'

class App < Sinatra::Base
	set :views, Proc.new { File.join(root, '../views/') }

	get '/' do
		# 'Create a Team and Heroes!'
		erb :super_hero
	end

	post '/teams' do
		# binding.pry
		# raise params.inspect
		@team_name = params[:team][:name]
		@team_motto = params[:team][:motto]
		@heroes = params[:team][:members]
		erb :team
	end
end
