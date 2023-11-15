class Enemy < Sprite
    def initialize
        Image.register(:enemy,'../images/enemy.pmg')
        self.x = 700
        self.y = 380
        self.image = Image[:enemy]
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