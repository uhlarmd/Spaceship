require "gosu"
require_relative 'z_order'
# require_relative 'main'

class Bomb
	
	attr_reader :x, :y

	def initialize(animation)
	  @img = Gosu::Image.new("media/bomb.png")
    @x = rand * 640
    @y = rand * 480
    @start_time = Time.now
    @end_time = @start_time + 3
  end

  def draw  
    @img.draw(
    	@x - @img.width / 2.0,
    	@y - @img.height / 2.0,
      ZOrder::Bombs)
  end
	def explode
  	@bombs.pop
  	@img = Gosu::Image.new("media/explode.png")
 	end

 	def update
 		if end_time - Time.now = 0
 			explode
 		end
 	end

end