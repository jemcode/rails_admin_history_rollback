module RailsAdminHistoryRollback
  class Engine < ::Rails::Engine
    initializer "RailsAdminHistoryRollback precompile hook" do |app|
      app.config.assets.precompile += [
        'rails_admin/main.js',
        'rails_admin/ra.history.css'
      ]
    end
  end
end
