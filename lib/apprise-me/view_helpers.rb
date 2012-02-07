module AppriseMe
  module ViewHelpers
    def link_to(*args, &block)
      html_options = args[block_given? ? 1 : 2] || {}
      html_options['data-apprise-confirm'] = html_options.delete(:confirm) if html_options[:confirm] && !html_options[:remote]
      super *args, &block
    end
  end
end

