package leehyun.sns.user.domain;

import java.util.Date;

public class User {
	private int userNum;
	private String userName;
	private String userId;
	private String password;
	private String birthday;
	private String email;
	private String phoneNum;
	private String gender;
	private String profileImg;
	private Date regDate;
	private String penaltyCnt;
	private Date penaltyDate;
	
	public User() {}
	
	public User(int userNum, String userName, String userId, String password, String birthday, String email, String phoneNum, String gender, String profileImg, Date regDate, String penaltyCnt, Date penaltyDate) {
		this.userNum = userNum;
		this.userName = userName;
		this.userId = userId;
		this.password = password;
		this.birthday = birthday;
		this.email = email;
		this.phoneNum = phoneNum;
		this.gender = gender;
		this.profileImg = profileImg;
		this.regDate = regDate;
		this.penaltyCnt = penaltyCnt;
		this.penaltyDate = penaltyDate;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getPenaltyCnt() {
		return penaltyCnt;
	}

	public void setPenaltyCnt(String penaltyCnt) {
		this.penaltyCnt = penaltyCnt;
	}

	public Date getPenaltyDate() {
		return penaltyDate;
	}

	public void setPenaltyDate(Date penaltyDate) {
		this.penaltyDate = penaltyDate;
	}

	public String toString() {
		return String.format("[%s, %s]", userName, password);
	}
}