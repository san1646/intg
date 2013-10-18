package main.java.com.plm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "MDKNIGHTEDWBSRATE")
public class KnightedWBSRate {

	@Id
	@Column(name = "TASKNUMBER", unique = true, nullable = false)
	private String taskNumber;
	
	@Column(name = "RATE")	
	private String rate;
	
	public KnightedWBSRate() {
		// TODO Auto-generated constructor stub
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the taskNumber
	 */
	public String getTaskNumber() {
		return taskNumber;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param taskNumber the taskNumber to set
	 */
	public void setTaskNumber(String taskNumber) {
		this.taskNumber = taskNumber;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the rate
	 */
	public String getRate() {
		return rate;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param rate the rate to set
	 */
	public void setRate(String rate) {
		this.rate = rate;
	}
}


/*
 * 5.	Hartley profiled some remarkable leaders in the cases we took up this quarter.  Who was the most market oriented?  Why?
Answer: The nominees have outstanding record. From Vanguard’s John Bogle, Wal-Mart’s Sam Walton, Boston Beer Company’s Jim Koch, each leader excelled in the circumstances they had.
 I feel that Jim Koch was the most market oriented of them all. He not only understood the market very well, but also created a niche for his product. BB was competing with multi nationals, 
 with already established brands, and powerful marketing. His brilliant move was to recognize the strategic window of opportunity. The premium beer was mostly imported, thus being costly and not
  fresh. He understood the risk but also realized the potential for such a product. 
  	Then, he ensured that he hit the right points of the consumer psyche. The name of his brand appealed to the national pride, Sam Adams. The marketing campaigns were directed such that patriotic 
  	sentiments are exploited. This gave his brand an unsurmountable advantage over imported brands. He was successful in his efforts. Another master stroke from Mr. Koch was to use the 
  	 pull strategy. The sales persons of BB interacted with the end consumer to analyze the sentiments. It helped in fine tuning the product to consumer taste. 
  	 The end result was a fantastic product with an impeccable marketing campaign. This catapolted the BB company to success.
  	 Jim Koch was very good in marketing his product. He himself appeared in his commercial advertisements, giving his brand a personal touch and connecting with the consumers.
  	 In my opinion he was the most market oriented.  

 * 
 * 
 * */
 