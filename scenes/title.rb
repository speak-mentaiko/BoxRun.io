class Title
    def initialize
        @GROUND_Y = 300
        @flg = false
    end

    def update
        Window.draw_box_fill(0, @GROUND_Y, Window.width, Window.height, [255, 255, 255])
        if Imput.key_down?(KEY_LEFT)
            Window.draw_box_fill(0, 0, Window.width, @GROUND_Y, [255, 255, 255])
            @flg = true
        end
    end

    def finish?
        @flg
    end

    def next_scene
        next_scene = Running.new
    end
end