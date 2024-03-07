<?php

namespace App\Livewire\Admin;

use App\Models\Team;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class AdminEditTeamComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $option;
    public $image;
    public $newimage;
    public $description;
    public $team_id;
    public function mount($team_id)
    {
        $team = team::where('id',$team_id)->first();
        $this->name = $team->name;
        $this->option = $team->option;
        $this->description = $team->description;
        $this->image = $team->image;


    }
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name' => 'required',
            // 'option' => 'required|unique:teams',
            'description' => 'required'
            // 'newimage' => 'required|mimes:jpeg,jpg,png',
        ]);
    }
    public function updateTeam()
    {
        $this->validate([
            'name' => 'required',
            // 'option' => 'required|unique:teams',
            'description' => 'required'
            // 'newimage' => 'required|mimes:jpeg,jpg,png',
        ]);
        $team = Team::find($this->team_id);
        $team->name = $this->name;
        $team->option = $this->option;
        if($this->newimage)
        {
            unlink('assets/images/teams'.'/'.$team->image);
            $imageName = Carbon::now()->timestamp. '.' . $this->newimage->extension();
            $this->newimage->storeAs('teams',$imageName);
            $team->image = $imageName;
        }
        $team->description = $this->description;

        $team->save();

        session()->flash('message','team has been updated successfully!');
    }
    public function render()
    {
        return view('livewire.admin.admin-edit-team-component')->layout('layouts.base');
    }
}
