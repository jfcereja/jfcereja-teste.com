trigger AlterarActivity on Opportunity (before update) {
	
    for(Opportunity op:Trigger.new){
		if(op.StageName == 'Closed Win' || op.StageName =='Closed Lost'){
        	for(Task task : [select status, subject from task WHERE whatId =: op.ID]){
				task.status = 'Deferred';
                update task;
			}
		}
    }
}