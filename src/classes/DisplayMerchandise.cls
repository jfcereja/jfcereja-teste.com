public class DisplayMerchandise {
        
                private Merchandise__c merchandise;
                public DisplayMerchandise(Merchandise__c item) {
                        this.merchandise = item;
                }
        
                public String name {
                        get { return merchandise.Name; }
                }
            	public Integer quantity{
                    get { return (Integer) merchandise.Quantity__c;}
            	}
                public Boolean inStock {
                        get { return (0 < merchandise.Quantity__c); }
                }
                public Decimal price {
                        get { return merchandise.Price__c; }
                }
                public Integer qtyToBuy { get; set; }
        }