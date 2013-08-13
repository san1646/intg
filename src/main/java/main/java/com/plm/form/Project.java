package main.java.com.plm.form;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Project {

	@Id
	@Column(name = "PROJECTID")
	@GeneratedValue
	private Integer projectId;

	@Column(name = "CUSTOMERID")
	private Integer customerId;

	@Column(name = "DEPARTMENTID")
	private Integer departmentId;
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
	private Integer zipCode;
	@Column(name = "ZIPCODEPLUS4")
	private Integer zipCodePlus4;
	@Column(name = "POSTALCODE")
	private Integer postalCode;

	@Column(name = "STARTDATE")
	private Date startDate;

	@Column(name = "ENDDATE")
	private Date endDate;
	@Column(name = "STARTDATE1")
	private Date startDate1;
	@Column(name = "ENDDATE1")
	private Date endDate1;
	
	
	
	
	/*Getters and Setters*/
	
	/**
	 * @return the projectId
	 */
	public Integer getProjectId() {
		return projectId;
	}
	/**
	 * @param projectId the projectId to set
	 */
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	/**
	 * @return the customerId
	 */
	public Integer getCustomerId() {
		return customerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	/**
	 * @return the departmentId
	 */
	public Integer getDepartmentId() {
		return departmentId;
	}
	/**
	 * @param departmentId the departmentId to set
	 */
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
	/**
	 * @return the addressLine1
	 */
	public String getAddressLine1() {
		return addressLine1;
	}
	/**
	 * @param addressLine1 the addressLine1 to set
	 */
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	/**
	 * @return the addressLine2
	 */
	public String getAddressLine2() {
		return addressLine2;
	}
	/**
	 * @param addressLine2 the addressLine2 to set
	 */
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the province
	 */
	public String getProvince() {
		return province;
	}
	/**
	 * @param province the province to set
	 */
	public void setProvince(String province) {
		this.province = province;
	}
	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
	 * @return the zipCode
	 */
	public Integer getZipCode() {
		return zipCode;
	}
	/**
	 * @param zipCode the zipCode to set
	 */
	public void setZipCode(Integer zipCode) {
		this.zipCode = zipCode;
	}
	/**
	 * @return the zipCodePlus4
	 */
	public Integer getZipCodePlus4() {
		return zipCodePlus4;
	}
	/**
	 * @param zipCodePlus4 the zipCodePlus4 to set
	 */
	public void setZipCodePlus4(Integer zipCodePlus4) {
		this.zipCodePlus4 = zipCodePlus4;
	}
	/**
	 * @return the postalCode
	 */
	public Integer getPostalCode() {
		return postalCode;
	}
	/**
	 * @param postalCode the postalCode to set
	 */
	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}
	/**
	 * @return the startDate
	 */
	public Date getStartDate() {
		return startDate;
	}
	/**
	 * @param startDate the startDate to set
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	/**
	 * @return the endDate
	 */
	public Date getEndDate() {
		return endDate;
	}
	/**
	 * @param endDate the endDate to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	/**
	 * @return the startDate1
	 */
	public Date getStartDate1() {
		return startDate1;
	}
	/**
	 * @param startDate1 the startDate1 to set
	 */
	public void setStartDate1(Date startDate1) {
		this.startDate1 = startDate1;
	}
	/**
	 * @return the endDate1
	 */
	public Date getEndDate1() {
		return endDate1;
	}
	/**
	 * @param endDate1 the endDate1 to set
	 */
	public void setEndDate1(Date endDate1) {
		this.endDate1 = endDate1;
	}
}
