trigger AccountTrigger on SObject (before insert,before update) {
    if(Trigger.isBefore && Trigger.isInsert){
        for(SObject s : Trigger.new){
            s.put('Name', 'New Account');
        }
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        for(SObject s : Trigger.new){
            s.put('Name', 'Updated Account');
        }
    }

}