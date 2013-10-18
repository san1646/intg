package main.java.com.plm.form;

import java.util.ArrayList;
import java.util.List;

import main.java.com.plm.model.KnightedWBSTechnology;

public class KnightedWBSTechnologyForm {

	private List<KnightedWBSTechnology> knightedWBSTechnologies = new ArrayList<KnightedWBSTechnology>();
	
	public KnightedWBSTechnologyForm() {
		// TODO Auto-generated constructor stub
	}
	
	
	public KnightedWBSTechnologyForm(
			List<KnightedWBSTechnology> knightedWBSTechnologies) {
		super();
		this.knightedWBSTechnologies = knightedWBSTechnologies;
	}


	public List<KnightedWBSTechnology> getKnightedWBSTechnologies() {
		return knightedWBSTechnologies;
	}
	
	public void setKnightedWBSTechnology(List<KnightedWBSTechnology> knightedWBSTechnologies) {
		this.knightedWBSTechnologies = knightedWBSTechnologies;
	}
}
