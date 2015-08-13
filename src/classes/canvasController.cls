public class canvasController {
    
        List<DisplayMerchandise> products;
        
        public list<DisplayMerchandise> getProducts(){
                if(products == null){
                
                        products = new List<DisplayMerchandise>();
                        for(Merchandise__c item : [SELECT Id, Name, Price__c, Quantity__c FROM Merchandise__c]){
                                products.add(new DisplayMerchandise(item));
                        }
                }               
                return products;
        }   
}