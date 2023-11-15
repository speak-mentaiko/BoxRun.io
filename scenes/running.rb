class Running
    def initialize
        #@box = Box.new
        @enemy = Enemy.new
        @flg = false
    end

    def update
        @enemy.update
    end

    def finish?
        return @flg
    end

    def next_scene
        next_scene = Title.new
    end
end