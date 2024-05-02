import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ContactCreator extends LightningElement {
    fields = ['FirstName', 'LastName', 'Email'];
    objectApiName='Contact'

    handleSuccess(event) {
        const contactId = event.detail.id;
        this.showToast('Success', 'Contact created successfully. Id: ' + contactId, 'success');
    }

    showToast(title, message, variant) {
        const toastEvent = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant
        });
        this.dispatchEvent(toastEvent);
    }
}
