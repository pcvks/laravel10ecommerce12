<?php

namespace App\Livewire\Admin;

use App\Models\Team;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class AdminAddTeamComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $option;
    public $image;
    public $description;


    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name' => 'required',
            'option' => 'required',
            'image' => 'required|mimes:jpeg,jpg,png',
            'description' => 'required',
        ]);
    }
    public function addTeam()
    {
        $this->validate([
            'name' => 'required',
            'option' => 'required',
            'image' => 'required|mimes:jpeg,jpg,png',
            'description' => 'required',
        ]);
        $team = new Team();
        $team->name = $this->name;
        $team->option = $this->option;
        $imageName = Carbon::now()->timestamp. '.' . $this->image->extension();
        $this->image->storeAs('teams',$imageName);
        $team->image = $imageName;
        $team->description = $this->description;
        $team->save();
        session()->flash('message','Team has been created successfully!');
    }
    public function render()
    {
        return view('livewire.admin.admin-add-team-component')->layout('layouts.base');
    }
}
