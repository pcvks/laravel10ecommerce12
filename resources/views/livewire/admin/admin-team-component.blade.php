<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }
    </style>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-4">
                                All Teams
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('admin.addteam') }}" class="btn btn-success pull-right">Add New</a>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" placeholder="Search..." wire:model="searchTerm">
                            </div>
                        </div>
                    </div>
                    <div class="panel-body" style="overflow: auto;">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Profile</th>
                                    <th>Name</th>
                                    <th>Option</th>
                                    <th>Description</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($teams as $team)
                                    <tr>
                                        <td>{{ $team->id }}</td>
                                        <td><img src="{{ asset('assets/images/teams') }}/{{ $team->image }}" width="60" alt=""></td>
                                        <td>{{ $team->name }}</td>
                                        <td>{{ $team->option }}</td>
                                        <td>{{ $team->description }}</td>
                                        <td>{{ $team->created_at }}</td>
                                        <td>
                                            <a href="{{ route('admin.editteam',['team_id'=>$team->id]) }}"><i class="fa fa-edit fa-2x text-info"></i></a>
                                            <a href="#" onclick="confirm('Are you sure, You want to delete this team?') || event.stopImmediatePropagation()" wire:click.prevent="deleteTeam({{ $team->id }})" style="margin-left: 10px;"><i class="fa fa-times fa-2x text-danger"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
