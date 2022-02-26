/**********************************************************************
Name: VehicleListController.cls

Purpose: Class to show vehicle list for component.

History
VERSION AUTHOR    					DATE 		DETAIL
1.0    	Pedro William			    24/01/2022  Class creation.
***********************************************************************/
public with sharing class VehicleListController {
    @AuraEnabled(cacheable=true)
    public static List<Vehicle__c> getVehicleRecords() {
        return [SELECT Id, Name, Type__c, Model__c,
        Air_Conditioner__c, Recommended_Passengers__c, Link__c
        FROM Vehicle__c];
    }
}