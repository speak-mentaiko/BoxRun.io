require 'dxopal'
include DXOpal

#Window.width = 600
#Window.height = 500

dir = [
  "scenes/scene_base.rb",
  "scenes/title.rb",
  "scenes/running.rb",
  "scenes/result.rb",
  "characters/back.rb",
  "characters/enemy.rb",
  "characters/player_base.rb",
  "characters/player_run.rb",
  "characters/player_start.rb",
  "characters/player_stop.rb",
  "scenes/test.rb",
]

dir.each do |file|
  require_remote file
end

Window.load_resources do
  scene = Title.new

  Window.loop do
    scene.update
    if scene.finish?
      scene.reset
      scene = scene.next_scene
    end
  end
end
