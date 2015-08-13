@isTest
public class TestRestrictContactByName {
    @isTest static void teste(){
        Contact c1 = new Contact();
        c1.LastName = 'INVALIDNAME';
        
        insert c1;
        Contact c2 = new Contact();
        c2.LastName = 'Abreu';
        insert c2;
        c2.LastName = 'INVALIDNAME';
        update c2;
    }
}