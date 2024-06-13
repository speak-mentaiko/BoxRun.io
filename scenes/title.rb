class Title < Scene_base
    def initialize
        super
        @player = Player_start.new
        @start = false
    end

    def update
        super
        @player.update
        @start = true if Input.key_push?(K_SPACE) || Input.key_push?(K_UP)
        if @start
            @player.jump
            @player.update
            @flg = true if @player.y == 370
        end
    end

    def next_scene
        next_scene = Running.new
    end
end