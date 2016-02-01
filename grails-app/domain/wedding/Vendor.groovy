package wedding

class Vendor {

    String vendorName
    String vendorContactName
    String vendorContactPhone
    String vendorRole
    String vendorWebsite
    Double vendorPricePaid
    Double vendorPriceTotal
    Double vendorPriceDue


    static constraints = {
        vendorName nullable: false, blank: false
        vendorContactName nullable: true, blank: true
        vendorContactPhone nullable: true, blank: true
        vendorRole nullable: true, blank: true
        vendorWebsite nullable: true, blank: true
        vendorPricePaid nullable: true, blank: true
        vendorPriceTotal nullable: true, blank: true
        vendorPriceDue nullable: true, blank: true
    }
}
