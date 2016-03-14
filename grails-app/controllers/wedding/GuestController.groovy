package wedding

class GuestController {

    GuestService guestService

    def index() {
        render view: "rsvp"
    }

    def weddingParty() {
        render view: "weddingParty"
    }

    def story() {
        render view: "story"
    }

    def registry() {
        render view: "registry"
    }

    def venue() {
        render view: "venue"
    }

    /**
     * RSVP Guest
     * Needs to check if the guest is on the list
     * Then needs to note down the guests response if they are
     * If not then allow them to email me
     *
     * Guest will be registered and connected in a party
     * If one registers you can have all guests in the party rsvp
     */
    def rsvp() {
        guestService.rsvpGuest(params?.firstName, params?.lastName)
    }
}
