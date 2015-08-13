global with sharing class FindNearby {
	
	public FindNearby(ApexPages.StandardSetController controller){		
	}
	
	//@RemoteAction
	//Procura lojas perto
	/*global static List<> getNearby(String lat, String lon){
	
	if(lat == null || lon == null || lat.equals('') || lon.equals('')){
		lat = '-23.5740994';
		lon = '-46.6404628';
	}
	
	String queryString =  	
		'SELECT Id, Name, Location__Longitude__s, Location__Latitude__s, ' +
							'Street_Address__c, Phone__c, City__c ' +
		'FROM Warehouse__c ' +
		'WHERE DISTANCE(Location__c, GEOLOCATION('+lat+','+lon+'), \'mi\') < 20 ' +
		'ORDER BY DISTANCE(Location__c, GEOLOCATION('+lat+','+lon+'), \'mi\') ' +
		'LIMIT 10';
		
		return(database.Query(queryString));
	}*/
	
	
}