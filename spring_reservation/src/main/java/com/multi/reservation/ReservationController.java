package com.multi.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ReservationController {

    @Autowired
    private ReservationDAO reservationDAO;

    @RequestMapping("reservation/{galleryID}/{exhibitionID}")
    public String reservationForm(
            @PathVariable int galleryID,
            @PathVariable int exhibitionID,
            Model model
    ) {
        return "reservation";
    }

    @PostMapping("reservation/confirm")
    public String confirmReservation(
            @ModelAttribute ReservationVO reservationVO
    ) {
        // DB에 예약 정보 저장
        reservationDAO.insertReservation(reservationVO);

        // 결제 페이지로 이동 (아직 구현되지 않음)
        return "redirect:/payment"; // 적절한 경로로 수정
    }
}
