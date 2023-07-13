import { Component } from '@angular/core';
import { DataService } from '../data.service';
import { ActivatedRoute } from '@angular/router'
export interface PROJECT {
  projectname: string;
  username: string;
  project_id: number;
  total: number;
}

@Component({
  selector: 'app-project',
  templateUrl: './project.component.html',
  styleUrls: ['./project.component.css']
})
export class ProjectComponent {
  displayedColumns: string[] = ['Project', 'Members', 'Hours', 'Actions'];

  dataSource: PROJECT[] =[];
  constructor(private dataService: DataService,private route: ActivatedRoute) { }

  ngOnInit() {
    var id = this.route.snapshot.paramMap.get('id');
    
    this.dataService.getProject(id).subscribe(response => {
        this.dataSource = response;
    });
  }
}
