public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String pCode){
        
        List<Contact> lista = [select id, firstName, lastName from Contact where lastName =: lname AND MailingPostalCode =: pcode];
        
        List<Contact> lista2 = new List<Contact>();
        for(Contact a : lista){
            lista2.add(a);
        }            
        
        return lista2;
    }
}