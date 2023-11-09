class Title
    def initialize
        @GROUND_Y = 300
    end

    def update
        Window.draw_box_fill(0, 0, Window.width, @GROUND_Y, [128, 255, 255])
        Window.draw_box_fill(0, @GROUND_Y, Window.width, Window.height, [0, 128, 0])
    end

    def finish?
        @flg = false
    end

    def next_scene
        next_scene = Title.new
    end
end