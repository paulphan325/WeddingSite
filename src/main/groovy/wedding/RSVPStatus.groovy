package wedding
/**
 * Created by John on 1/27/16.
 *
 * Enum to hold the rsvp status of a person attending the wedding
 **/
enum RSVPStatus {

    ATTENDING("Attending"),
    DECLINED("Declined"),
    INVITED("Invited"),
    UNKNOWN("Unknown")

    static String value

    RSVPStatus(String value) {
        this.value = value
    }

}