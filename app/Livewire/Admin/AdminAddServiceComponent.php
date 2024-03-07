<?php

namespace App\Livewire\Admin;

use App\Models\Service;
use Livewire\Component;

class AdminAddServiceComponent extends Component
{
    public $heading;
    public $title;
    public $description;

    public function updated($fields)
    {
        $this->validateOnly($fields,[
            "heading" => "required",
            "title" => "required",
            "description" => "required"
        ]);
    }

    public function storeService()
    {
        $this->validate([
            "heading" => "required",
            "title" => "required",
            "description" => "required"
        ]);

        $service = new Service();
        $service->heading = $this->heading;
        $service->title = $this->title;
        $service->description = $this->description;
        $service->save();
        session()->flash('message','Service has been created succesfully!');
    }
    public function render()
    {
        return view('livewire.admin.admin-add-service-component')->layout('layouts.base');
    }
}
