package com.multi.reservation;

public class ExhibitionVO {
    private int exhibitionID;
    private int galleryID;
    private String exhibitionName;
    private String exhibitionPeriod;
    private String exhibitionRoom;
    private String price;

    public int getExhibitionID() {
        return exhibitionID;
    }

    public void setExhibitionID(int exhibitionID) {
        this.exhibitionID = exhibitionID;
    }

    public int getGalleryID() {
        return galleryID;
    }

    public void setGalleryID(int galleryID) {
        this.galleryID = galleryID;
    }

    public String getExhibitionName() {
        return exhibitionName;
    }

    public void setExhibitionName(String exhibitionName) {
        this.exhibitionName = exhibitionName;
    }

    public String getExhibitionPeriod() {
        return exhibitionPeriod;
    }

    public void setExhibitionPeriod(String exhibitionPeriod) {
        this.exhibitionPeriod = exhibitionPeriod;
    }

    public String getExhibitionRoom() {
        return exhibitionRoom;
    }

    public void setExhibitionRoom(String exhibitionRoom) {
        this.exhibitionRoom = exhibitionRoom;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "ExhibitionVO [exhibitionID=" + exhibitionID + ", galleryID=" + galleryID + ", exhibitionName="
                + exhibitionName + ", exhibitionPeriod=" + exhibitionPeriod + ", exhibitionRoom=" + exhibitionRoom
                + ", price=" + price + "]";
    }
}
