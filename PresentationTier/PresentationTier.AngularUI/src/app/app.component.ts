import {Component} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from '../environments/environment';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'Enlab Sofware Demo';
  works: any;

  constructor(private httpClient: HttpClient) {
    this.httpClient.get(`${environment.baseUrl}/api/work`)
      .subscribe(works => {
        this.works = works;
      });
  }
}
