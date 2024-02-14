package com.rt.entity;

public class BookEntity {
	private int BookId;
	private String Title;
	private String Author;
	private String Language;
	private String ISBN;
	private String Publisher;
	private String PublisherCity;
	private String PublicationDate;
	
	public BookEntity(){}
	
	public BookEntity(int bookId, String title, String author, String language, String iSBN, String publisher,
			String publisherCity, String publicationDate) {
		super();
		BookId = bookId;
		Title = title;
		Author = author;
		Language = language;
		ISBN = iSBN;
		Publisher = publisher;
		PublisherCity = publisherCity;
		PublicationDate = publicationDate;
	}

	public int getBookId() {
		return BookId;
	}

	public void setBookId(int bookId) {
		BookId = bookId;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public String getLanguage() {
		return Language;
	}

	public void setLanguage(String language) {
		Language = language;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public String getPublisher() {
		return Publisher;
	}

	public void setPublisher(String publisher) {
		Publisher = publisher;
	}

	public String getPublisherCity() {
		return PublisherCity;
	}

	public void setPublisherCity(String publisherCity) {
		PublisherCity = publisherCity;
	}

	public String getPublicationDate() {
		return PublicationDate;
	}

	public void setPublicationDate(String publicationDate) {
		PublicationDate = publicationDate;
	}
	
	
}
