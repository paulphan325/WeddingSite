package wedding

class Guest {

    static hasMany = [guestParty: Guest] //Hold other guests in the party

    String firstName
    String lastName
    String phoneNumber
    String email

    RSVPStatus rsvpStatus
    String mealPreference
    boolean plusOne
    String gift
    boolean thankYouSent
    String accommodations

    static constraints = {
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        plusOne nullable: false, blank: false
        rsvpStatus nullable: false, blank: true
        email nullable: true, blank: true
        phoneNumber nullable: true, blank: true
        mealPreference nullable: true, blank: true
        gift nullable: true, blank: true
        thankYouSent nullable: true, blank: true
        accommodations nullable: true, blank: true
    }
}