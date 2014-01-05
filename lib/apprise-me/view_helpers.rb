module AppriseMe
  module ViewHelpers
    def link_to(*args, &block)
      html_options = args[block_given? ? 1 : 2] || {}
      if (html_options[:confirm] || (html_options[:data] && html_options[:data][:confirm]) &&
                                                           !html_options[:remote])

        html_options['data-apprise-confirm'] = html_options.delete(:confirm) ||
                    html_options[:data].delete(:confirm)
      end
      super *args, &block
    end

   # def convert_options_to_data_attributes(options, html_options)
   #   if html_options
   #     html_options2 = html_options.stringify_keys
   #     html_options2['data-apprise-confirm'] = html_options2.delete('confirm')
   #   end
   #   super options, html_options2

   # end
  end
end

