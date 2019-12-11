require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get ('/') {
      erb :root
    }

    get ('/new') {
      erb :"pirates/new"
    }

    post ('/pirates'){
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each { |info|
        Ship.new(info)
      } 

      @ships = Ship.all

      erb :"pirates/show"
     }
  end
end
