<?php

namespace App\Livewire\Admin;

use App\Models\Team;
use Livewire\Component;

class AdminTeamComponent extends Component
{
    public function deleteTeam($team_id)
    {
        $team = Team::find($team_id);
        $team->delete();
        session()->flash('message','Team has been deleted successfully!');
    }
    public function render()
    {
        $teams = Team::all();
        return view('livewire.admin.admin-team-component',['teams'=>$teams])->layout('layouts.base');
    }
}
