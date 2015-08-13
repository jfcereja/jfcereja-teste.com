trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    /*List<Opportunity> listOp = [select StageName from Opportunity where id IN :Trigger.New];
    List<Task> opToTask = new List<Task>();
    for(Opportunity opp : listOp){
        if(opp.StageName == 'Closed Won'){
            Task newTask = new Task();
	        newTask.WhatId = opp.Id;
    	    newTask.Subject = 'Follow Up Test Task';
            opToTask.add(newTask);
        }
    }
    if(opToTask.size()>0){
        insert opToTask;
    }*/
}