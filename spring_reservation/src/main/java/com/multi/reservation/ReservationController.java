package com.multi.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
    @RequestMapping("selectDate")
    public String selectDate(Model model) {
        // 날짜 선택 페이지 로직
        return "timeSelection"; // 운영 시간 선택 페이지로 이동
    }

    @RequestMapping("selectTime")
    public String selectTime(Model model) {
        // 운영 시간 선택 페이지 로직
        return "attendanceSelection"; // 인원 수 선택 페이지로 이동
    }

    @RequestMapping("selectCount")
    public String selectCount(Model model) {
        // 인원 수 선택 페이지 로직
        return "payment"; // 최종 결제 페이지로 이동
    }

    // 추가적으로 최종 결제 페이지에 대한 로직도 구현해야 합니다.
}
