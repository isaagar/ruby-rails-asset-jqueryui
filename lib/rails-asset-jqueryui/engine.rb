module Rails
  module Asset
    module Jqueryui
      class Engine < Rails::Engine
        #should autowire
        config.root = '/usr/share/ruby-rails-asset-jqueryui'
      end
    end
  end
end
