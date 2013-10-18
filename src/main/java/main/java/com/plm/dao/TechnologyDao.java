package main.java.com.plm.dao;

import java.util.List;

import main.java.com.plm.model.KnightedWBSRate;
import main.java.com.plm.model.KnightedWBSTechnology;

public interface TechnologyDao {
	void insertKnightedWBS(KnightedWBSTechnology knightedWBSTechnology);
	List<KnightedWBSTechnology> getKnightedWBS();
	int updateKnightedWBS(KnightedWBSTechnology knightedWBSTechnology);
	
	//Knighted Rate Structure methods
	List<KnightedWBSRate> getKnightedRate();
	int insertKnightedRate(KnightedWBSRate knightedWBSRate);
	
}
