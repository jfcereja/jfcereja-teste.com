public class MobileInventoryExtension {
 
  public MobileInventoryExtension(ApexPages.StandardController c) {}
  public MobileInventoryExtension(ApexPages.StandardSetController c) {}
    
  @RemoteAction
  public static String updateMerchandiseItem(String productId, Integer newInventory) {
   
    List<Merchandise__c> m = [SELECT Id, Name, Price__c, Quantity__c from Merchandise__c WHERE Id =: productId LIMIT 1];
    
    if(m.size() > 0) {
      m[0].Quantity__c = newInventory;
      try {
        update m[0];
        return 'Item Updated';
      }
      catch (Exception e) {
        return e.getMessage();
      }   
    }
    else {
      return 'No item found with that ID';
    }    
  } 
    @RemoteAction
  public static String removeMerchandiseItem(String productId) {
   
      List<Merchandise__c> m = [SELECT id from Merchandise__c WHERE Id =: productId];
     
      if(m.size() > 0){
      try {
        delete m;
        return 'Item Deleted';
      }
      catch (Exception e) {
        return e.getMessage();
      }   
    }
    else {
      return 'No item found with that ID';
    }    
  }
  @RemoteAction
  public static String createMerchandise(String name, Integer price, Integer quantity) {
   
    Merchandise__c m = new Merchandise__c();
    
    m.Name = name;
    m.Price__c = price;
    m.Quantity__c = quantity;
    
    if(m.Name != null) {
      try {
          insert m;
        return 'Item Created';
      }
      catch (Exception e) {
          return e.getMessage();
      }   
    }
    else {
      return 'Something went wrong. Could not create the merchandise.';
    }    
  }     
}