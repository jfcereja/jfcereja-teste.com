trigger RestrictInvoiceDeletion on Invoice__c (before delete) {
    // With each of the invoice statements targeted by the trigger 
    //   and that have line items, add an error to prevent them 
    //   from being deleted.
    for (Invoice__c invoice : 
                    [SELECT Id
                    FROM Invoice__c
                    WHERE Id IN (SELECT Invoice__c FROM Line_Itm__c) AND
                    Id IN :Trigger.old]){
        Trigger.oldMap.get(invoice.Id).addError(
                                        'Cannot delete invoice statement with line items');
    }
}