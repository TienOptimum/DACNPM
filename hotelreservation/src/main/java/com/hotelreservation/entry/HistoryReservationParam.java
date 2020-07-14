package com.hotelreservation.entry;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class HistoryReservationParam {
    public Integer reservation_id;
    public Integer room_id;
}
