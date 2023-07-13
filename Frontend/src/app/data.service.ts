import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  constructor(private httpClient: HttpClient) { }

  public getUsers(): Observable<any> {
    const url = 'http://localhost:8000/api/users';
    return this.httpClient.get<any>(url);
  }
  public getTasks(id:any): Observable<any> {
    const url = 'http://localhost:8000/api/tasks/'+id;
    return this.httpClient.get<any>(url);
  }
  public getProject(id:any): Observable<any> {
    const url = 'http://localhost:8000/api/projects/'+id;
    return this.httpClient.get<any>(url);
  }
}