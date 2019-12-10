class Pirate
    attr_accessor :name, :weight, :height

    def initialize(params)
        @name = params[:pirate][:name]
        @weight = params[:pirate][:weight]
        @height = params[:pirate][:height]
    end
end