class BookHistoryMailer < ActionMailer::Base
  default from: "donotreply@acsjvl.com",
          to: "donotreply@acsjvl.com"

  # Send user-created email (subject and body) to the selected group of users.
  def create(book_history)
    @book_history = book_history
    subject = "Your book -- #{@book_history.book.title} -- has been borrowed!"
    bcc = @book_history.book.user_email
    logger.error "bcc: #{bcc}"
    if bcc.present?
      mail(bcc: bcc, subject: subject)
    else
      self.message.perform_deliveries = false
    end
  end
end
