<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use App\User;
use App\project;
use App\task;
use DB;

class ApiController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function projects($id)
    {
        $return =DB::select("
            SELECT b.*, projects.name AS projectname FROM (SELECT project_id, GROUP_CONCAT(username) as username, SUM(total) as total, CONCAT(',',GROUP_CONCAT(userid),',') AS useridlist
            FROM (SELECT tasks.project_id AS project_id, SUM(tasks.time) AS total, users.name AS username , tasks.user_id AS userid
            FROM tasks 
            LEFT JOIN users ON tasks.user_id = users.id
            GROUP BY project_id, tasks.user_id,users.name) AS t
            GROUP BY project_id ) AS b
            LEFT JOIN projects ON b.project_id = projects.id
            WHERE useridlist LIKE '%,".$id.",%'
        ");
        return json_encode($return); 
    }
    public function tasks($id)
    {
        $return = task::select('users.name as username', 'tasks.name', 'tasks.time')
            ->leftjoin('users','tasks.user_id','=','users.id')     
            ->where('tasks.project_id',$id)
            ->get();
        return json_encode($return); 
    }
    public function users()
    {
        $return = user::select('name', 'id')
            ->get();
        return json_encode($return); 
    }
}
