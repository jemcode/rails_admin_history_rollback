module RailsAdmin
  module Extensions
    module PaperTrail
      class VersionProxy
        def message
          @message = @version.event
        end
        def version_id
          @version.id
        end
      end
    end
  end
end
