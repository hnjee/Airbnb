package com.airbnb.s1.place.placeFile;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.airbnb.s1.util.FileSaver;

@Service
public class PlaceFileService {
	
	@Autowired
	private PlaceFileDAO placeFileDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileSaver fileSaver;

}
