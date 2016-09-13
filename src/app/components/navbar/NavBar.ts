import {Component} from '@angular/core';

@Component({
  selector: 'nav-bar',
  template: require('./NavBar.html')
})
export class NavBar {
  public text: string;
  public works: string;

  constructor() {
    this.text = 'My brand new component!';

    this.works = 'NavBar works!'
  }
}
