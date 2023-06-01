@extends('masters')
@section('content')

<div class="container">
    <div class="row">
        <div class="col">
            {{-- Form --}}
              <form action="/form" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" aria-describedby="emailHelp">
                </div>

                 <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Description</label>
                    <input type="text" class="form-control" name="description">
                </div>
                 <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Location</label>
                    <input type="text" class="form-control" name="location">
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email</label>
                    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>



                <button type="submit" class="btn btn-primary">Submit</button>
                </form>
        </div>

    </div>
</div>

@endsection

