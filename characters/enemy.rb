class Enemy < Sprite
    Image.register(:enemy,'../images/enemy.png')
    def initialize
        x = 700
        y = 380
        image = Image[:enemy]
        super(x,y,image)
        @speed
    end

    def update
        self.x -= 8
        self.draw
    end

    def stop
        self.draw
    end
end