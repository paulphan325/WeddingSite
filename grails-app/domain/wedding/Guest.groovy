package wedding

class Guest {

    String firstName
    String lastName
    boolean plusOne
    RSVPStatus rsvpStatus
    Relationship relationship

    static constraints = {
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        plusOne nullable: false, blank: false
        rsvpStatus nullable: false
        relationship nullable: true, blank: true
    }

    /**
     * RSVP Status of the Guest
     *
     * String value
     */
    private enum RSVPStatus {

        ATTENDING("Attending"),
        DECLINED("Declined"),
        INVITED("Invited"),
        UNKNOWN("Unknown")

        static String value

        RSVPStatus(String value) {
            this.value = value
        }
    }

    private enum Relationship {

        BRIDE_FAMILY("Bride Family"),
        GROOM_FAMILY("Groom Family"),
        FRIEND("Friend")

        static String relationship

        Relationship(String relationship) {
            this.relationship = relationship
        }

    }
}

