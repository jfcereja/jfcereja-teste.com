public class MerchandiseOperations {
    public static Id invoice( String pName, Integer pSold, String pDesc) {
        // Retrieve the pencils sample merchandise
        Merchandise__c m = [SELECT Price__c,Quantity__c
            FROM Merchandise__c WHERE Name = :pName LIMIT 1];
        // break if no merchandise is found
        System.assertNotEquals(null, m);
        // Add a new invoice
        Invoice__c i = new Invoice__c(
            Descricao__c = pDesc);
        insert i;

        // Add a new line item to the invoice
        Line_Itm__c li = new Line_Itm__c(
            Name = '1',
            Invoice__c = i.Id,
            Merchandise__c = m.Id,
            Unit_Price__c = m.Price__c,
            Quantity__c = pSold);
        insert li;

        // Update the inventory of the merchandise item 
        m.Quantity__c -= pSold;
        update m;
        return i.Id;
    }
}