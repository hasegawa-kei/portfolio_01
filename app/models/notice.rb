class Notice < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :impression, optional: true

  validates :content, presence: true
  validates :date, presence: true
  validates :status, presence: true

  enum status: {
    book_register: 0,
    impression_register: 1
  }, _prefix: true

  def notice_book_followers(user, book)
    self.user_id = user.id
    self.book_id = book.id
    self.content = "新しい本を登録しました"
    self.date = Date.today
    self.status = "book_register"
    save
  end

  def notice_impression_followers(user, impression)
    self.user_id = user.id
    self.book_id = impression.book_id
    self.impression_id = impression.id
    self.content = "新しい読書感想を登録しました"
    self.date = Date.today
    self.status = "impression_register"
    save
  end
end
