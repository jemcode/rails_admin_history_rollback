require "rails_admin_history_rollback/engine"

module RailsAdminHistoryRollback
end

require 'rails_admin/config/actions'
require 'rails_admin/extension'
require 'rails_admin/extensions/paper_trail'

require "rails_admin_history_rollback/extensions/paper_trail/auditing_adapter"
require "rails_admin_history_rollback/config/actions/history_index"
