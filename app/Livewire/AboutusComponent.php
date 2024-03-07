<?php

namespace App\Livewire;

use App\Models\Service;
use App\Models\Team;
use Livewire\Component;

class AboutusComponent extends Component
{
    public function render()
    {
        $services = Service::all();
        $teams = Team::all();
        return view('livewire.aboutus-component',['services'=>$services,'teams'=>$teams])->layout('layouts.base');
    }
}
