module Refinery
  module Blog
    class CommentMailer < ActionMailer::Base

      def notification(comment, request)
        @comment = comment
        mail :subject => Blog::Comment::Notification.subject,
             :recipients => Blog::Comment::Notification.recipients,
             :from => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>"
      end

    end
  end
end
