class Player_start < Player_base
    Image.register(:box, '../images/box.png')
    def initialize
        super(Image[:box])
    end
  
    def update
        super
    end
end