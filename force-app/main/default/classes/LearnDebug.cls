public class LearnDebug {
    public static void methodToLearnDebugging(){
        // Create a list of contacts
        List<Contact> conList = new List<Contact> {
            new Contact(FirstName='Joeee',LastName='Smithhh',Department='Finance'),
                new Contact(FirstName='Kathyyy',LastName='Smithhhh',Department='Technology')
                };
                     system.debug('ConList:- '+ conList);
                    // Bulk insert all contacts with one DML call
                    //insert conList;
                    // List to hold the new contacts to update
                    List<Contact> listToUpdate = new List<Contact>();
        // Iterate through the list and add a title only
        //   if the department is Finance
        for(Contact con : conList) {
            if (con.Department == 'Finance') {
                con.Title = 'Financial analyst';
                // Add updated contact sObject to the list.
                system.debug('Con To Update:- '+ con);
                listToUpdate.add(con);
            }
        }
        system.debug('listToUpdate To Update:- '+ listToUpdate);
        // Bulk update all contacts with one DML call
        //update listToUpdate;
    }
}