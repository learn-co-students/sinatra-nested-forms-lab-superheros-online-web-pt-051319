require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get('/'){ erb :super_hero }
    post('/team') do
    	erb :team
    end

end
