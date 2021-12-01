package com.han.S20210901.dao;

import java.util.List;

import com.han.S20210901.model.Faq;

public interface FaqDao {
	List<Faq> faqList(Faq faq);
	Faq faqDetail(int fnum);
	String faqListResult(int fnum);
	Faq faqUpdateForm(int fnum);
	int faqUpdatePro(Faq faq);
	int faqInsertPro(Faq faq);
	int faqDeletePro(int fnum);

}
