class Player_run < Player_base
	Image.register(:box_0, 'images/box_0.png')
  	Image.register(:box_1, 'images/box_1.png')
  	def initialize
    	super(Image[:box_0])
    	@distance = 0
  	end
  
  	def update
    	super
    	change_sprite
    	if @jump == 0
      		if Input.key_push?(K_SPACE) || Input.key_push?(K_UP)
        		@jump = 1
      		end
    	elsif @jump == 1
      		jump
    	end
  	end
  
  	def change_sprite
    	if @distance % 7 == 0
      		@distance += 1
    	end
    	@distance += 1
    	if (@distance / 4) % 2 == 0
      		self.image = Image[:box_0]
    	else
      		self.image = Image[:box_1]
    	end
  	end

  	def distance
     	@distance
  	end
end