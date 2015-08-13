public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String str){
        List<Contact> lista = new List<Contact>();
        
        for(Integer i=0;i<num;i++){
            Contact c = new Contact();
            c.FirstName = 'Teste '+i;
            lista.add(c);
        }
        
        return lista;
    }
}