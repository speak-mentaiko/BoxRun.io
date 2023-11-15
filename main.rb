require 'dxopal'
include DXOpal

Window.width = 600
Window.height = 500

files = [
  "scenes/title.rb",
  "scenes/running.rb",
  "characters/enemy.rb",
]

Window.load_resources do
  files.each do |file|
    require_remote file
  end

  scene = Running.new

  Window.loop do
    scene.update
    if scene.finish?
      scene.reset
      scene = scene.next_scene
    end
  end
end
