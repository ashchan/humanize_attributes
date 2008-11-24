module ActiveRecord
  class Base
    class << self
      def human_attribute_name(attr)
        @humanized_attributes ||= {}
        @humanized_attributes[attr.to_sym] || attr.humanize
      end

      def humanize_attributes(*args)
        @humanized_attributes = *args
      end
    end
  end
end