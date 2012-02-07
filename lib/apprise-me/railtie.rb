require 'apprise-me/view_helpers'
module AppriseMe
  class Railtie < Rails::Railtie
    initializer "apprise_me.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
