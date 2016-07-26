trigger AccountCallout on Account (after insert) {

    for (Account a : Trigger.new) {
        // make the asynchronous web service callout
        WebServiceCallout.sendNotification(a.Name, a.BillingCity);
    }

}