package com.hotelreservation.entry;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class RoomParam {
    public String name;
    public String description;
    public Integer kind_of_room_id;
    public Integer payment_method_id;
}
