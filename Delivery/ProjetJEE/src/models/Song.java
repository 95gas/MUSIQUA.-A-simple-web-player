package models;


public class Song {

	private int ID;
	private String title;
	private int year;
	private float duration;
	private boolean is_top;
	private String genre;
	private String album;
	private String artist;
	
	public Song() {
		
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getYear() {
		return year;
	}


	public void setYear(int year) {
		this.year = year;
	}


	public float getDuration() {
		return duration;
	}


	public void setDuration(float duration) {
		this.duration = duration;
	}


	public boolean isIs_top() {
		return is_top;
	}
	
	
	public void setIs_top(boolean is_top) {
		this.is_top = is_top;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public String getAlbum() {
		return album;
	}


	public void setAlbum(String album) {
		this.album = album;
	}

	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}

	public String getArtist() {
		return artist;
	}


	public void setArtist(String artist) {
		this.artist = artist;
	}
	
	
}
