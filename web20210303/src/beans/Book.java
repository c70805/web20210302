package beans;

public class Book {
	private String bookname, author;
	private int price;

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String name) {
		this.bookname = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public boolean equals(Object obj) {
		Book x=(Book)obj;
		return this.bookname.equals(x.bookname) 
				&& this.author.equals(x.author); 
				
	}
}
