return unless Rails.env.development?

require "awesome_print/ext/active_support"
module AwesomePrint
  module ActiveSupport
    def cast_with_active_support(object, type)
      cast = cast_without_active_support_original(object, type)
      if defined?(::ActiveSupport) && defined?(::HashWithIndifferentAccess)
        if (defined?(::ActiveSupport::TimeWithZone) && object.is_a?(::ActiveSupport::TimeWithZone)) || object.is_a?(::Date)
          cast = :active_support_time
        elsif object.is_a?(::HashWithIndifferentAccess)
          cast = :hash_with_indifferent_access
        elsif defined?(::ActionController::Parameters) && object.is_a?(::ActionController::Parameters)
          cast = :action_controller_parameters
        end
      end
      cast
    end

    # Format ActionController::Parameters as standard Hash.
    #------------------------------------------------------------------------------
    def awesome_action_controller_parameters(object)
      awesome_hash(object.to_unsafe_h)
    end
  end
end

AwesomePrint::Formatter.alias_method :cast_without_active_support_original, :cast
AwesomePrint::Formatter.alias_method :cast, :cast_with_active_support