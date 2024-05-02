import { LightningElement,track ,wire} from 'lwc';
import NAME_FIELD from '@salesforce/schema/User.Name'; 
import { getRecord, getFieldValue } from 'lightning/uiRecordApi'; 
import Id from '@salesforce/user/Id'; 
const fields = [NAME_FIELD]; 
export default class Show_Name extends LightningElement {
    userId = Id; 
    
    @wire(getRecord, { recordId: '$userId', fields }) 
    user; 
    get name() { 
        return getFieldValue(this.user.data, NAME_FIELD); 
    } 
    constructor(){
        super();
    }

}