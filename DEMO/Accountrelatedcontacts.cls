public class Accountrelatedcontacts {
  public String acc{get;set;}
          
           public List<SelectOption> AccountNames() {
           
                  List<SelectOption> accOptions= new List<SelectOption>();
                  accOptions.add( new SelectOption('','--Select--'));
                  for( Account acc : [select Id,name from Account ] ) {
                          accOptions.add( new SelectOption(acc.Id,acc.name)); 
                  }
                 return accOptions;
           }
    }