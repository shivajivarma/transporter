import {Component, View} from 'angular2/core';

@Component({
    selector: 'version',
})
@View({
	template: '<b>Version</b> {{version}}'
	})
export class VersionComponent {
	version: string;
	constructor(){this.version='1.0'}
}