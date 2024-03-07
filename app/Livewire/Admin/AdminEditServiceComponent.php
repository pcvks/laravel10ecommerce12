<?php

namespace App\Livewire\Admin;

use App\Models\Service;
use Livewire\Component;

class AdminEditServiceComponent extends Component
{
    public $heading;
    public $title;
    public $description;
    public $service_id;

    public function mount($service_id)
    {
        $service = Service::find($service_id);
        $this->heading = $this->heading;
        $this->title = $this->title;
        $this->description = $this->description;
        $this->service_id = $service->id;
    }

    public function updated($fields)
    {
        $this->validateOnly($fields,[
            "heading" => "required",
            "title" => "required",
            "description" => "required"
        ]);
    }
    public function updateService()
    {
        $this->validate([
            "heading" => "required",
            "title" => "required",
            "description" => "required"
        ]);

        $service = Service::find($this->service_id);
        $service->heading = $this->heading;
        $service->title = $this->title;
        $service->description = $this->description;
        $service->save();
        session()->flash('message','Service has been updated successfully!');

    }
    public function render()
    {
        return view('livewire.admin.admin-edit-service-component')->layout('layouts.base');
    }
}
