module ActiveRecord
  module Acts
    module Commentable
      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods
        def acts_as_commentable(&block)
          has_many :comments, :as => :commentable, :dependent => :destroy, &block
        end
      end

    end
  end
end
