class BookBorrowed < ActionMailer::Base
    default from: "donotreply@acsjvl.com",
          to: "donotreply@acsjvl.com"

  # Send user-created email (subject and body) to the selected group of users.
  def borrowed(book_history)
    @book_history = book_history
    subject = "You have borrowed the book -- #{@book_history.book.title}!"
    bcc = @book_history.user.email
    logger.error "bcc: #{bcc}"
    if bcc.present?
      mail(bcc: bcc, subject: subject)
    else
      self.message.perform_deliveries = false
    end
  end
end

