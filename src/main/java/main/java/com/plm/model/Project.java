package main.java.com.plm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;

@Entity
@Table(name = "PROJECT")
@Scope("session")
public class Project {

public Project() {
	// TODO Auto-generated constructor stub
	
}
	public Project(Integer projectId, String customerId, String departmentId,
			String addressLine1, String addressLine2, String city,
			String state, String province, String country, String zipCode,
			String zipCodePlus4, String postalCode, String startDate,
			String endDate, String startDate1, String endDate1) {
		super();
		this.projectId = projectId;
		
		if(customerId.length()==0) this.customerId = "100";
		this.customerId = customerId;
		
		if(departmentId.length()==0) this.departmentId = "100";
		else this.departmentId = departmentId;
		
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.city = city;
		this.state = state;
		this.province = province;
		this.country = country;
		this.zipCode = zipCode;
		this.zipCodePlus4 = zipCodePlus4;
		this.postalCode = postalCode;
		this.startDate = startDate;
		this.endDate = endDate;
		this.startDate1 = startDate1;
		this.endDate1 = endDate1;
	}

	@Id
	@Column(name = "PROJECTID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_Project_ID")
	@SequenceGenerator(name = "SEQ_Project_ID", sequenceName = "SEQ_PROJECT_ID", allocationSize = 1)
	// @SequenceGenerator(name="SEQ_CONTACT_ID",
	// sequenceName="SEQ_CONTACT_ID",allocationSize=1)
	private Integer projectId;

	@Column(name = "CUSTOMERID")
	private String customerId;

	@Column(name = "DEPARTMENTID")
	private String departmentId;

	@Column(name = "ADDRESSLINE1")
	private String addressLine1;

	@Column(name = "ADDRESSLINE2")
	private String addressLine2;

	@Column(name = "CITY")
	private String city;

	@Column(name = "STATE")
	private String state;

	@Column(name = "PROVINCE")
	private String province;

	@Column(name = "COUNTRY")
	private String country;

	@Column(name = "ZIPCODE")
	private String zipCode;

	@Column(name = "ZIPCODEPLUS4")
	private String zipCodePlus4;

	@Column(name = "POSTALCODE")
	private String postalCode;

	@Column(name = "STARTDATE")
	private String startDate;

	@Column(name = "ENDDATE")
	private String endDate;

	@Column(name = "STARTDATE1")
	private String startDate1;

	@Column(name = "ENDDATE1")
	private String endDate1;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//
	}
	
	
	
	/*
	 * *******************************************************************************************************
	 * Getters and Setters*/
	
	
	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the projectId
	 */
	public Integer getProjectId() {
		return projectId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param projectId the projectId to set
	 */
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the customerId
	 */
	public String getCustomerId() {
		return customerId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the departmentId
	 */
	public String getDepartmentId() {
		return departmentId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param departmentId the departmentId to set
	 */
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the addressLine1
	 */
	public String getAddressLine1() {
		return addressLine1;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param addressLine1 the addressLine1 to set
	 */
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the addressLine2
	 */
	public String getAddressLine2() {
		return addressLine2;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param addressLine2 the addressLine2 to set
	 */
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the province
	 */
	public String getProvince() {
		return province;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param province the province to set
	 */
	public void setProvince(String province) {
		this.province = province;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the zipCode
	 */
	public String getZipCode() {
		return zipCode;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param zipCode the zipCode to set
	 */
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the zipCodePlus4
	 */
	public String getZipCodePlus4() {
		return zipCodePlus4;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param zipCodePlus4 the zipCodePlus4 to set
	 */
	public void setZipCodePlus4(String zipCodePlus4) {
		this.zipCodePlus4 = zipCodePlus4;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the postalCode
	 */
	public String getPostalCode() {
		return postalCode;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param postalCode the postalCode to set
	 */
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the startDate
	 */
	public String getStartDate() {
		return startDate;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param startDate the startDate to set
	 */
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the endDate
	 */
	public String getEndDate() {
		return endDate;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param endDate the endDate to set
	 */
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the startDate1
	 */
	public String getStartDate1() {
		return startDate1;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param startDate1 the startDate1 to set
	 */
	public void setStartDate1(String startDate1) {
		this.startDate1 = startDate1;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @return the endDate1
	 */
	public String getEndDate1() {
		return endDate1;
	}

	/** PLM 2013
		@Author Sanket Bharaswadkar
	 * @param endDate1 the endDate1 to set
	 */
	public void setEndDate1(String endDate1) {
		this.endDate1 = endDate1;
	}

}
