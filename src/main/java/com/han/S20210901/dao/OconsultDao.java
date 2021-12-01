package com.han.S20210901.dao;

import java.util.List;

import com.han.S20210901.model.Oconsult;

public interface OconsultDao {

	int total();

	List<Oconsult> listOconsult(Oconsult oconsult);


	Oconsult oconsultDetail(int onum);

	int oconsultUpdate(Oconsult oconsult);

	int oconsultCount(int onum);


}
