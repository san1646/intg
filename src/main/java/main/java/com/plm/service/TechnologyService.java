package main.java.com.plm.service;

import java.util.List;
import org.springframework.stereotype.Service;

import main.java.com.plm.model.KnightedWBSRate;
import main.java.com.plm.model.KnightedWBSTechnology;

@Service
public interface TechnologyService {
	void insertKnightedWBS(KnightedWBSTechnology knightedWBSTechnology);
	List<KnightedWBSTechnology> getKnightedWBS();
	int updateKnightedWBS(KnightedWBSTechnology knightedWBSTechnology);
	
	//Knighted Rate Structure methods
	List<KnightedWBSRate> getKnightedRate();
	int insertKnightedRate(KnightedWBSRate knightedWBSRate);
}
