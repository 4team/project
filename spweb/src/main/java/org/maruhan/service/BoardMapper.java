package org.maruhan.service;

import java.util.List;

import org.maruhan.domain.BoardVO;
import org.maruhan.persistence.CRUDMapper;

public interface BoardMapper extends CRUDMapper<BoardVO,Integer>{
	
	public List<BoardVO> listAll() throws Exception;
	
}
