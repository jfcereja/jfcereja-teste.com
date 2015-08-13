public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String name){     
        List<List<sObject>> searchList = [FIND :name IN NAME FIELDS 
                   RETURNING Account(Name),Lead(FirstName,LastName) ];
        return searchList;
    }
}