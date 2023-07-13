import { Component, OnInit } from '@angular/core';
import { DataService } from '../data.service';
export interface USERS {
  name: string;
  id: number;
}


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  displayedColumns: string[] = ['name', 'id', 'Actions'];

  dataSource: USERS[] =[];
  constructor(private dataService: DataService) { }

  ngOnInit() {

    this.dataService.getUsers().subscribe(response => {
        this.dataSource = response;
    });
  }

}