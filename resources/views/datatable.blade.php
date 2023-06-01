<div class="container">
    <div class="row">
        @php $count = 0; @endphp
        @foreach($teachers as $teacher)
            @if($count % 3 === 0)
                <div class="row">
            @endif
            <div class="col-md-4">
                <div class="card" >
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"> {{$teacher->name}} </h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card.</p>
                        <a href="#" class="btn btn-primary">contact</a>
                    </div>
                </div>
            </div>
            @php $count++; @endphp
            @if($count % 3 === 0 || $count === count($teachers))
                </div>
            @endif
        @endforeach
    </div>
</div>
