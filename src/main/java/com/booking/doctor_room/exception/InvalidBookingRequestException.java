package com.booking.doctor_room.exception;

/**
 * @author Simpson Alfred
 */

public class InvalidBookingRequestException extends RuntimeException {
    public InvalidBookingRequestException(String message) {
        super(message);
    }
}
