module RailsAdminHistoryRollback
  class Engine < ::Rails::Engine
    initializer "RailsAdminHistoryRollback precompile hook" do |app|
      app.config.assets.precompile += [
        'rails_admin/diff_match_patch.js',
        'rails_admin/jquery.pretty-text-diff.js',
        'rails_admin/ra.history.js',
        'rails_admin/ra.history.css'
      ]
    end
  end
end
