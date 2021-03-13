package models;

public class Playlist {

	private String title;
	private int num_songs;
	private int[] songs;
	
	public Playlist(String title, int num_songs) {
		super();
		this.title = title;
		this.num_songs = num_songs;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNum_songs() {
		return num_songs;
	}
	public void setNum_songs(int num_songs) {
		this.num_songs = num_songs;
	}
	
	public int[] get_songs() {
		return songs;
	}
	
}
