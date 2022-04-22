require 'library'

describe Library do

  it 'can find a specific book' do

    # Arrange
    title = 'POODR'
    # Act
      # not required
    # Assert
    expect(subject.find_book(title)).not_to eq nil

  end

  it 'can add a new book' do

    # Arrange
    book = {title: 'TimboTime', author: 'Ya Boi Timbo', subject: 'Timbo'}
    # Act
    subject.add_book(book)
    # Assert
    expect(subject.books).to include book

  end

  it 'can remove a book' do

    # Arrange
    title = 'POODR'
    book = {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'}
    # Act
    subject.remove_book(title)
    # Assert
    expect(subject.books).not_to include book

  end

  it 'can list all the books on a specific subject' do

    # Arrange

    # Act

    # Assert
    expect(subject.list_books).to eq subject.books

  end

end

