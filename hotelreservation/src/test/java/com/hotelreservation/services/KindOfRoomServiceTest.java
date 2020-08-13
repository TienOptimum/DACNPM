package com.hotelreservation.services;

import com.hotelreservation.entry.KindOfRoomParam;
import com.hotelreservation.model.KindOfRoom;
import com.hotelreservation.repositories.KindOfRoomRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.mockito.invocation.InvocationOnMock;
import org.mockito.stubbing.Answer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import static org.mockito.Mockito.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class KindOfRoomServiceTest {
    @Autowired
    KindOfRoomService kindOfRoomService;

    @MockBean
    KindOfRoomRepository kindOfRoomRepository;
    @Before
    public void setUp(){
        KindOfRoom kindOfRoom = new KindOfRoom();

        when(kindOfRoomRepository.save(any(KindOfRoom.class))).thenAnswer(new Answer<Object>() {
            @Override
            public Object answer(InvocationOnMock invocation) throws Throwable{
                Object[] arguments = invocation.getArguments();
                if (arguments != null && arguments.length > 0 && arguments[0] != null){
                    return arguments[0];
                }
                return null;
            }
        });

        when(kindOfRoomRepository.getOne(1)).thenReturn(kindOfRoom);
    }

    @Test
    public void testCreateKindOfRoomSuccess(){
        KindOfRoom kindOfRoom = new KindOfRoom();
        kindOfRoom.setName("Kind of room test");
        kindOfRoom.setDescription("This kind of room is for testing");

        kindOfRoomService.saveKindOfRoom(kindOfRoom);
    }


}
