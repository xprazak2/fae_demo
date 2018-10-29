module Fae
  module UserConcern
    extend ActiveSupport::Concern

    module ClassMethods
      def available_languages
        [:en, :cs]
      end
    end
  end
end
