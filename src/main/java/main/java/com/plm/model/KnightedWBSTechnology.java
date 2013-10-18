package main.java.com.plm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "KN_KNIGHTEDWBS")
public class KnightedWBSTechnology {
	
	public KnightedWBSTechnology() {
		// TODO Auto-generated constructor stub
	}
	

	
	public KnightedWBSTechnology(Integer knightedWbsId, String taskNumber,
			String hours) {
		super();
		this.knightedWbsId = knightedWbsId;
		this.taskNumber = taskNumber;
		this.hours = hours;
	}



	@Id
	@Column(name = "KNIGHTEDWBSID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_KNIGHTEDWBSID")//(strategy = GenerationType.SEQUENCE, generator = "SEQ_Project_ID"
	@SequenceGenerator(name = "SEQ_KNIGHTEDWBSID", sequenceName = "SEQ_KNIGHTEDWBSID", allocationSize = 1)
	private Integer knightedWbsId;
	
	@Column(name = "TASKNUMBER", unique = true)	
	private String taskNumber;
	
	@Column(name = "HOURS")
	private String hours;

	@Column(name = "TASKNAME")
	private String taskName;
	/*Setters and Getters*/
	
	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the knightedWbsId
	 */
	public Integer getKnightedWbsId() {
		return knightedWbsId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param knightedWbsId the knightedWbsId to set
	 */
	public void setKnightedWbsId(Integer knightedWbsId) {
		this.knightedWbsId = knightedWbsId;
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
	 * @return the hours
	 */
	public String getHours() {
		return hours;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param hours the hours to set
	 */
	public void setHours(String hours) {
		this.hours = hours;
	}
	
	
	//Overriding equals()
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj == this){return true;}
		
		if(obj == null){return false;}
		
		KnightedWBSTechnology k = (KnightedWBSTechnology) obj;
		if(k.getTaskNumber().equalsIgnoreCase(this.getTaskNumber())	){ 
			return true;
		}
		
		return false;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}



	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the taskName
	 */
	public String getTaskName() {
		return taskName;
	}



	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param taskName the taskName to set
	 */
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
}
