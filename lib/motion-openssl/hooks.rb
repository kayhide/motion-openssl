MotionBlender.except

Dir[File.expand_path('../hooks/**/*.rb', __FILE__)].each do |file|
  name = File.basename file, '.*'
  MotionBlender.on_require name do
    require file
  end
end
