class BookReturnedNotice < ActionMailer::Base
    default from: "donotreply@acsjvl.com",
          to: "donotreply@acsjvl.com"

  # Send user-created email (subject and body) to the selected group of users.
  def bookreturned(book_history)
    @book_history = book_history
    subject = "The book -- #{@book_history.book.title} -- has been returned!"
    bcc = @book_history.user.email
    logger.error "bcc: #{bcc}"
    if bcc.present?
      mail(bcc: bcc, subject: subject)
    else
      self.message.perform_deliveries = false
    end
  end
end

