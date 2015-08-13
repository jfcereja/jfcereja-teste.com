public with sharing class novoItemDoPlano {
    
    public Item_Do_Plano__c item{get; set;}
    public String itemID;
    public String acao {get;set;}
    
    public novoItemDoPlano(ApexPages.StandardController controller) {
        itemID = ApexPages.currentPage().getParameters().get('id');
        item = new Item_Do_Plano__c (Plano_de_acao__c=itemid);
    }
    public PageReference salvar(){
        item.acao__c = acao;
        insert item;
        PageReference requestPage = new pagereference('/' + itemId);
        requestPage.setRedirect(true);
        return requestPage;
   
    }
    public List<SelectOption> getAcoes() {
        List<SelectOption> acoes = new List<SelectOption>();
        Set<String> acids = new Set<String>();
        List<Item_do_Plano__c> ips = [Select Acao__c From Item_do_Plano__c Where Plano_de_acao__c =: itemId];
        for (Item_do_Plano__c x : ips){
            acids.add(x.Acao__c );
        }
        for (Acao__c x : [Select id, Name From Acao__c Where ID NOT IN : acids]){
            acoes.add(new SelectOption(x.Id,x.name));
        }
        return acoes;
    }
}