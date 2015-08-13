public class StoreFrontController {
        
        List<DisplayMerchandise> products;
        Set<DisplayMerchandise> carrinhoDeCompras = new Set<DisplayMerchandise>();
        
        public list<DisplayMerchandise> getProducts(){
                if(products == null){
                
                        products = new List<DisplayMerchandise>();
                        for(Merchandise__c item : [SELECT Id, Name, Price__c, Quantity__c FROM Merchandise__c]){
                                products.add(new DisplayMerchandise(item));
                        }
                }               
                return products;
        }
        public Pagereference addToCart(){       
                for(DisplayMerchandise p : products) {
                        if(0 < p.qtyToBuy) {
                            if(p.qtyToBuy <= p.quantity){
                                carrinhoDeCompras.add(p);
                            }
                        }
                }
                return null;
        }
       public String getCartContents() {
                if(0 == carrinhoDeCompras.size()) {
                        return '(empty)';
                }
                String msg = '<ul>\n';
                for(DisplayMerchandise p : carrinhoDeCompras) {
                        msg += '<li>';
                        msg += p.name + ' (' + p.qtyToBuy + ')';
                        msg += '</li>\n';
                }
        msg += '</ul>';
        return msg;
           }
}