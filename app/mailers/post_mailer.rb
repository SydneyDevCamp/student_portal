class PostMailer < ActionMailer::Base
  default from: "peter@sydneydevcamp.com"

  def p_mailer(post)
    @post = post
    @topic = @post.topic
    @posters = []
    @topic.posts.each do |post|
      @posters << post.user
    end

    @posters_emails = @posters.map { |u| u.email }.uniq
    mail(:to => @posters_emails, :cc => "peter@sydneydevcamp.com", :subject => "Reply to post: " + post.topic.title)
    
  end
end
