import {Component} from '@angular/core';
import {HeaderComponent} from '../components/original-header/Header';
import {MainSectionComponent} from '../components/MainSection';
import {NavBar} from '../components/navbar/NavBar';

@Component({
  selector: 'fountain-app',
  template: require('./App.html'),
  directives: [HeaderComponent, MainSectionComponent, NavBar]
})
export class AppComponent {
}
