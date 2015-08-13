public class AccountHandler {
    public static Account insertNewAccount(String nome){
		Account a = new Account();
		a.Name = nome;        
        try{
            insert a;
            return a;
        }catch(Exception e){
         system.debug('O erro na inserção da conta foi '+e);   
        }
        return null;
    }
}