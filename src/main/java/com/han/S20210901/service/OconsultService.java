package com.han.S20210901.service;

import java.util.List;

import com.han.S20210901.model.Oconsult;

public interface OconsultService {
	int total();

	List<Oconsult> listOconsult(Oconsult oconsult);


	Oconsult oconsultDetail(int onum);

	int oconsultUpdate(Oconsult oconsult);

	int oconsultCount(int onum);

	int oconsultInsert(Oconsult oconsult);


}
