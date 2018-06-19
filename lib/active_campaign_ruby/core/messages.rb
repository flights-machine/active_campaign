module ActiveCampaignRuby
  module Core
    module Messages
      def message_delete_list(options = {})
        get(__method__, options)
      end

      def message_delete(options = {})
        get(__method__, options)
      end

      def message_list(options = {})
        get(__method__, options)
      end

      def message_template_add(options = {})
        get(__method__, options)
      end

      def message_template_delete_list(options = {})
        get(__method__, options)
      end

      def message_template_delete(options = {})
        get(__method__, options)
      end

      def message_template_export(options = {})
        get(__method__, options)
      end

      def message_template_import(options = {})
        get(__method__, options)
      end

      def message_template_list(options = {})
        get(__method__, options)
      end

      def message_template_view(options = {})
        get(__method__, options)
      end

      def message_view(options = {})
        get(__method__, options)
      end

      def message_add(options = {})
        post __method__, options
      end

      def message_edit(options = {})
        post __method__, options
      end

      def message_template_edit(options = {})
        post __method__, options
      end
    end
  end
end
