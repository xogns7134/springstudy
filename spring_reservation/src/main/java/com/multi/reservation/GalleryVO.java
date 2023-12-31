package com.multi.reservation;

public class GalleryVO {
    private int galleryID;
    private String galleryName;
    private String galleryAddress;
    private String galleryNumber;
    private String operatingHours;
    private String closeDays;
    private String galleryImg; // 새로운 이미지 필드 추가

    public int getGalleryID() {
        return galleryID;
    }

    public void setGalleryID(int galleryID) {
        this.galleryID = galleryID;
    }

    public String getGalleryName() {
        return galleryName;
    }

    public void setGalleryName(String galleryName) {
        this.galleryName = galleryName;
    }

    public String getGalleryAddress() {
        return galleryAddress;
    }

    public void setGalleryAddress(String galleryAddress) {
        this.galleryAddress = galleryAddress;
    }

    public String getGalleryNumber() {
        return galleryNumber;
    }

    public void setGalleryNumber(String galleryNumber) {
        this.galleryNumber = galleryNumber;
    }

    public String getOperatingHours() {
        return operatingHours;
    }

    public void setOperatingHours(String operatingHours) {
        this.operatingHours = operatingHours;
    }

    public String getCloseDays() {
        return closeDays;
    }

    public void setCloseDays(String closeDays) {
        this.closeDays = closeDays;
    }

    public String getGalleryImg() {
        return galleryImg;
    }

    public void setGalleryImg(String galleryImg) {
        this.galleryImg = galleryImg;
    }

    @Override
    public String toString() {
        return "GalleryVO [galleryID=" + galleryID + ", galleryName=" + galleryName + ", galleryAddress="
                + galleryAddress + ", galleryNumber=" + galleryNumber + ", operatingHours=" + operatingHours
                + ", closeDays=" + closeDays + ", galleryImg=" + galleryImg + "]";
    }
}
