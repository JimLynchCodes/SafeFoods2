import {Component} from '@angular/core';

@Component({
  selector: 'dashboard',
  template: require('./Dashboard.html'),
  directives: [],
  styleUrls:['app/containers/dashboard/Dashboard.css']
})
export class DashboardComponent {

  foodsSearchInputString:any;
  name:any;

  dashboardHeaderClicked() {
    console.log('The dashboard header was clicked! ' );
  }
}
