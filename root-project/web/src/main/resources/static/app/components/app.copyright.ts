import {Component, View} from 'angular2/core';

@Component({
    selector: 'copyright',
})
@View({
	template: 'Copyright &copy; {{year}} <a href="http://codemons.com">Codemons</a>.'
	})
export class CopyRightComponent {
	year: number;
	constructor(){this.year=new Date().getFullYear()}
}
