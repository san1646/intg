package main.java.com.plm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import main.java.com.plm.dao.TechnologyDao;
import main.java.com.plm.model.KnightedWBSRate;
import main.java.com.plm.model.KnightedWBSTechnology;
import main.java.com.plm.service.TechnologyService;

@Service
@Transactional
public class TechnologyServiceImpl implements TechnologyService {

	@Autowired
	private TechnologyDao technologyDao;
	
	public void insertKnightedWBS(KnightedWBSTechnology knightedWBSTechnology) {
		// TODO Auto-generated method stub
			technologyDao.insertKnightedWBS(knightedWBSTechnology);
	}

	public List<KnightedWBSTechnology> getKnightedWBS() {
		// TODO Auto-generated method stub
		return technologyDao.getKnightedWBS();
	}
	
	public int updateKnightedWBS(KnightedWBSTechnology knightedWBSTechnology) {
		// TODO Auto-generated method stub
		return technologyDao.updateKnightedWBS(knightedWBSTechnology);
	}

	//Knighted Rate
	public List<KnightedWBSRate> getKnightedRate() {
		// TODO Auto-generated method stub
		return technologyDao.getKnightedRate();
	}
	
	public int insertKnightedRate(KnightedWBSRate knightedWBSRate) {
		// TODO Auto-generated method stub
		return technologyDao.insertKnightedRate(knightedWBSRate);
	}
	
}
