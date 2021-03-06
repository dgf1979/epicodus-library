require('spec_helper')


describe(BookCopies) do
  describe('#id') do
    it('returns the copy id after adding and saving') do
      new_copy = BookCopies.new({ :book_id => 26 })
      new_copy.save()
      expect(new_copy.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('.find') do
    it('returns all books with same book_id') do
      new_copy = BookCopies.new({ :book_id => 56})
      new_copy.save()
      new_copy = BookCopies.new({ :book_id => 56})
      new_copy.save()
      expect(BookCopies.find(56).count()).to(eq(2))
    end
  end
end
