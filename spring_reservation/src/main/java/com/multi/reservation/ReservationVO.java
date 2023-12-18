package com.multi.reservation;

public class ReservationVO {
    private int reservationID;
    private String memberID;
    private int galleryID;
    private int exhibitionID;
    private int reservationNumber;
    private String exhibitionName;
	public int getReservationID() {
		return reservationID;
	}
	public void setReservationID(int reservationID) {
		this.reservationID = reservationID;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public int getGalleryID() {
		return galleryID;
	}
	public void setGalleryID(int galleryID) {
		this.galleryID = galleryID;
	}
	public int getExhibitionID() {
		return exhibitionID;
	}
	public void setExhibitionID(int exhibitionID) {
		this.exhibitionID = exhibitionID;
	}
	public int getReservationNumber() {
		return reservationNumber;
	}
	public void setReservationNumber(int reservationNumber) {
		this.reservationNumber = reservationNumber;
	}
	public String getExhibitionName() {
		return exhibitionName;
	}
	public void setExhibitionName(String exhibitionName) {
		this.exhibitionName = exhibitionName;
	}
	@Override
	public String toString() {
		return "ReservationVO [reservationID=" + reservationID + ", memberID=" + memberID + ", galleryID=" + galleryID
				+ ", exhibitionID=" + exhibitionID + ", reservationNumber=" + reservationNumber + ", exhibitionName="
				+ exhibitionName + "]";
	}
}
