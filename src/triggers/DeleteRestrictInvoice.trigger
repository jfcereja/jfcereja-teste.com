trigger DeleteRestrictInvoice on Invoice__c (before delete) {
 

  List<Invoice__c> invoices = [Select i.Name, (Select Name From Line_Itens__r)
                                 From Invoice__c i 
                                Where i.Id IN :Trigger.oldMap.keySet()];
 
  
  for (Invoice__c invoice : invoices) {
    if (!invoice.Line_Itens__r.isEmpty()) {
      Trigger.oldMap.get(invoice.id).addError('Cannot delete Invoice with Line Items');
    }
  }
}