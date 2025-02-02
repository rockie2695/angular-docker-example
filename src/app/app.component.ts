import { Component } from '@angular/core';
import { RouterOutlet,RouterModule,RouterLink } from '@angular/router';
import { HomeComponent } from "./home/home.component";
@Component({
  selector: 'app-root',
  imports: [HomeComponent, RouterModule,RouterLink],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'homes';
}
