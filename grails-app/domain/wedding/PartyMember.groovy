package wedding

class PartyMember {

    static hasMany = [guestParty: Guest] //Hold other guests in the party

    String firstName
    String lastName
    String phoneNumber
    String email

    RSVPStatus rsvpStatus
    String mealPreference
    boolean plusOne
    String gift //in this case gift for them
    String accommodations

    String weddingPartyRole

    static constraints = {
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        plusOne nullable: false, blank: false
        rsvpStatus nullable: false, blank: true
        weddingPartyRole nullable: false, blank: false
        email nullable: true, blank: true
        phoneNumber nullable: true, blank: true
        mealPreference nullable: true, blank: true
        gift nullable: true, blank: true
        accommodations nullable: true, blank: true
    }
}
