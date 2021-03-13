package models;

public class Album {

	private String name;
	private String artist;
	private float duration;
	private int year;
	private Song[] songs;

	public Album(String name, String artist, float duration, int year) {
		super();
		this.name = name;
		this.artist = artist;
		this.duration = duration;
		this.year = year;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public float getDuration() {
		return duration;
	}

	public void setDuration(float duration) {
		this.duration = duration;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public Song[] getSongs() {
		return songs;
	}

	public void setSongs(Song[] songs) {
		this.songs = songs;
	}

}
