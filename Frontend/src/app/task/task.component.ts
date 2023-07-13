import { Component } from '@angular/core';
import { DataService } from '../data.service';
import { ActivatedRoute } from '@angular/router'
export interface TASK {
  name: string;
  username: string;
  time: number;
}

@Component({
  selector: 'app-task',
  templateUrl: './task.component.html',
  styleUrls: ['./task.component.css']
})
export class TaskComponent {
  displayedColumns: string[] = ['Task', 'Member', 'Hours'];

  dataSource: TASK[] =[];
  constructor(private dataService: DataService,private route: ActivatedRoute) { }

  ngOnInit() {
    var id = this.route.snapshot.paramMap.get('id');
    
    this.dataService.getTasks(id).subscribe(response => {
        this.dataSource = response;
    });
  }

}
