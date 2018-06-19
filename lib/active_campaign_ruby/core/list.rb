module ActiveCampaignRuby
  module Core
    module List
     
      def list_list(options= {})
        get __method__, options
      end

      def list_add(options = {})
        post __method__, options
      end

      def list_edit(options = {})
        post __method__, options
      end

      def list_field_add(options = {})
        post __method__, options
      end

      def list_field_edit(options = {})
        post __method__, options
      end

      def list_delete_list(options = {})
        get __method__, options
      end

      def list_delete(options = {})
        get __method__, options
      end

      def list_field_delete(options = {})
        get __method__, options
      end

      def list_field_view(options = {})
        get __method__, options
      end
      
      def list_paginator(options = {})
        get __method__, options
      end

      def list_view(options = {})
        get __method__, options
      end
    end
  end
end
