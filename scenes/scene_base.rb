class Scene_base
    Image.register(:stage, '../images/stage.png')
    def initialize
        @flg = false
        @next_scene
    end

    def update
        Window.draw(0,-22,Image[:stage])
    end

    def finish?
        @flg
    end

    def reset
        @flg = false
    end
end