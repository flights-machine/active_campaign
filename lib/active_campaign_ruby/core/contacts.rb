module ActiveCampaignRuby
  module Core
    module Contacts
      def contact_add(options = {})
        post __method__, options
      end
      alias subscriber_add contact_add

      def contact_edit(options = {})
        post __method__, options
      end

      def contact_sync(options = {})
        post __method__, options
      end

      def contact_tag_add(options = {})
        post __method__, options
      end

      def contact_tag_remove(options = {})
        post __method__, options
      end

      def contact_note_edit(options = {})
        post __method__, options
      end

      def contact_note_add(options = {})
        post __method__, options
      end

      def contact_automation_list(options = {})
        get __method__, options
      end

      def contact_delete_list(options = {})
        get __method__, options
      end

      def contact_delete(options = {})
        get __method__, options
      end

      def contact_list(options = {})
        get __method__, options
      end


      def contact_paginator(options = {})
        get __method__, options
      end

      def contact_view(options = {})
        get __method__, options
      end

      def contact_view_email(options = {})
        get __method__, options
      end

      def contact_view_hash(options = {})
        get __method__, options
      end

      def contact_note_delete(options = {})
        get __method__, options
      end
    end
  end
end
