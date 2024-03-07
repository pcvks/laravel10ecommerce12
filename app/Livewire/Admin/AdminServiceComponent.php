<?php

namespace App\Livewire\Admin;

use App\Models\Service;
use Livewire\Component;

class AdminServiceComponent extends Component
{
    public function deleteService($service_id)
    {
        $service = Service::find($service_id);
        $service->delete();
        session()->flash('message','Service has been deleted successfully!');
    }
    public function render()
    {
        $services = Service::all();
        return view('livewire.admin.admin-service-component',['services'=>$services])->layout('layouts.base');
    }
}
