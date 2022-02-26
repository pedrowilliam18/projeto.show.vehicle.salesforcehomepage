import { LightningElement, wire} from 'lwc';
import getVehicleList from '@salesforce/apex/VehicleListController.getVehicleRecords';

export default class VehicleList extends LightningElement {
    @wire(getVehicleList) Vehicles;
}