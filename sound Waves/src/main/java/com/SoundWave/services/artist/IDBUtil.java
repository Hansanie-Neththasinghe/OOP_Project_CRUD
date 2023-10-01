package com.SoundWave.services.artist;

import java.util.List;

import javax.servlet.http.Part;

import com.SoundWave.model.Song;

//creating method prototypes inside the interface

public interface IDBUtil {
	public  List<Song> validate(String name);
	public  String getFileName(Part part);
	public  boolean insertsong(String name, String artistName, String genre, String releasedDate, String lyricist, String producer, String lyrics, String imageFileName, String songtrack);
	public  boolean updatesong(String id, String name, String artistName, String genre, String releasedDate, String lyricist, String producer, String lyrics, String coverart, String songtrack);
	public  List<Song> getSongDetails(String Id);
	public  boolean deleteSong(String id);
	public  String getSubmittedFileName(Part part);
}
