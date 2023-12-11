package com.multi.reservation;

public class MemberVO {
	private String memberID;
	private String memberName;
	private String email;
	private String password;
	private String memberNumber;
	private String memberAddress;
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(String memberNumber) {
		this.memberNumber = memberNumber;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	@Override
	public String toString() {
		return "MemberVO [memberID=" + memberID + ", memberName=" + memberName + ", email=" + email + ", password="
				+ password + ", memberNumber=" + memberNumber + ", memberAddress=" + memberAddress + "]";
	}
}
