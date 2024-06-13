class Player_stop < Player_base
    Image.register(:box_0_hit, '../images/box_0_hit.png')
    Image.register(:box_1_hit, '../images/box_1_hit.png')
    def initialize(distance)
        if (distance / 4) % 2 == 0
            self.image = Image[:box_0_hit]
        else
            self.image = Image[:box_1_hit]
        end
        super(Image[:box_0_hit])
    end
  
    def update
        super
    end
end