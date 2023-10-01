package com.SoundWave.model;


/**
 * @author Hansanie
 *
 */
public class Song {
	private int id;
	private String name;
	private String artistName;
	private String genre;
	private String releasedDate;
	private String lyricist;
	private String producer;
	private String lyrics;
	private String coverart;
	private String songtrack;
	
	public Song() {
		
	}
	// Constructor creation
	public Song(int id, String name, String artistName, String genre, String releasedDate, String lyricist,
			String producer, String lyrics, String coverart, String songtrack) {
		super();
		this.id = id;
		this.name = name;
		this.artistName = artistName;
		this.genre = genre;
		this.releasedDate = releasedDate;
		this.lyricist = lyricist;
		this.producer = producer;
		this.lyrics = lyrics;
		this.coverart = coverart;
		this.songtrack = songtrack;
	}
	
	//Implementing getters
	
	//get method for ID
	public int getId() {
		return id;
	}
	
	//get method for name
	public String getName() {
		return name;
	}
	
	//get method for artistName
	public String getArtistName() {
		return artistName;
	}
	
	//get method for genre
	public String getGenre() {
		return genre;
	}
	
	//get method for releasedDate
	public String getReleasedDate() {
		return releasedDate;
	}

	//get method for lyricist
	public String getLyricist() {
		return lyricist;
	}
	
	//get method for producer
	public String getProducer() {
		return producer;
	}
	
	//get method for lyrics
	public String getLyrics() {
		return lyrics;
	}

	//get method for coverart
	public String getCoverart() {
		return coverart;
	}

	//get method for songtrack
	public String getSongtrack() {
		return songtrack;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @param artistName the artistName to set
	 */
	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}
	/**
	 * @param genre the genre to set
	 */
	public void setGenre(String genre) {
		this.genre = genre;
	}
	/**
	 * @param releasedDate the releasedDate to set
	 */
	public void setReleasedDate(String releasedDate) {
		this.releasedDate = releasedDate;
	}
	/**
	 * @param lyricist the lyricist to set
	 */
	public void setLyricist(String lyricist) {
		this.lyricist = lyricist;
	}
	/**
	 * @param producer the producer to set
	 */
	public void setProducer(String producer) {
		this.producer = producer;
	}
	/**
	 * @param lyrics the lyrics to set
	 */
	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	/**
	 * @param coverart the coverart to set
	 */
	public void setCoverart(String coverart) {
		this.coverart = coverart;
	}
	/**
	 * @param songtrack the songtrack to set
	 */
	public void setSongtrack(String songtrack) {
		this.songtrack = songtrack;
	}

	
	
}

