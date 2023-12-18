package com.multi.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insertReservation(ReservationVO reservationVO) {
        my.insert("reservation.insertReservation", reservationVO);
    }
}
