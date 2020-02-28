Rails.configuration.to_prepare do
    require_dependency 'issue'

    module IssuePatch
        def self.included(base)
            base.class_eval do
                unloadable
                has_many :products, :class_name => "Product", :dependent => :destroy, :inverse_of => :issue
            end
        end
    end
    
    unless Issue.included_modules.include?IssuePatch
      Issue.send(:include, IssuePatch)
    end
end