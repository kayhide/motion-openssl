lib_dir = File.expand_path('../../..', __FILE__)

Motion::Project::App.setup do |app|
  case app.template || :ios
  when :ios
    app.vendor_project(
      File.join(lib_dir, "OpenSSL"),
      :static,
      products: %w(libssl.a libcrypto.a)
    )
  when :tvos
    app.vendor_project(
      File.join(lib_dir, "OpenSSL"),
      :static,
      products: %w(libssl-tvOS.a libcrypto-tvOS.a)
    )
  else
    raise "Unknown platform"
  end
end
