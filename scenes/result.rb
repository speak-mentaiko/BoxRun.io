class Result < Scene_base
    Image.register(:restart, 'images/restart.png')
    def initialize(distance)
        super
        @player = Player_stop.new(distance)
        @back = Back.new
    end

    def update
        super
        @back.stop
        @player.update
        Window.draw_font(230, 200, "PUSH  SPACE", Font.new(24),:color => C_BLACK)
        Window.draw(260,240,Image[:restart])
        Window.draw_font(460, 0, "#{$distance_high}", Font.new(24),:color => C_BLACK)
        Window.draw_font(430, 0, "HI:", Font.new(24),:color => C_BLACK)
        if Input.key_push?(K_SPACE) || Input.key_push?(K_UP)
            @flg = true
        end
    end

    def next_scene
        next_scene = Running.new
    end
end