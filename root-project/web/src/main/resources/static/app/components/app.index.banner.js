/*(function(app) {
  app.BannerComponent = ng.core
    .Component({
      selector: 'banner'
    }).View({
        directives: [NgFor, RouterLink],
      template: `<!-- Main content -->
      <section class="content">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Our Services</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                <li *ngFor="#item of items; #i = index" [data-slide-to]="item"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img style="width:100%" src="http://placehold.it/900x500/39CCCC/ffffff&text=Bus+Transportation+Services" alt="First slide">

                    <div class="carousel-caption">
                      First Slide
                    </div>
                  </div>
                  <div class="item">
                    <img style="width:100%" src="http://placehold.it/900x500/3c8dbc/ffffff&text=Car+Rental+Services" alt="Second slide">

                    <div class="carousel-caption">
                      Second Slide
                    </div>
                  </div>
                  <div class="item">
                    <img style="width:100%" src="http://placehold.it/900x500/f39c12/ffffff&text=Smart+Travel" alt="Third slide">

                    <div class="carousel-caption">
                      Third Slide
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                  <span class="fa fa-angle-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                  <span class="fa fa-angle-right"></span>
                </a>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
      </section>
      <!-- /.content -->`
    })
    .Class({
      constructor: function() {this.items = [1,2,3]}
    });
})(window.app || (window.app = {}));*/
System.register(['angular2/core'], function(exports_1) {
    var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
        else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    };
    var __metadata = (this && this.__metadata) || function (k, v) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };
    var core_1;
    var CarouselComponent;
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            }],
        execute: function() {
            CarouselComponent = (function () {
                function CarouselComponent() {
                    this.items = ['1', '2'];
                    this.items = ['1', '2'];
                }
                CarouselComponent = __decorate([
                    core_1.Component({
                        selector: 'carousel',
                    }),
                    core_1.View({
                        templateUrl: '/app/components/app.index.banner.html'
                    }), 
                    __metadata('design:paramtypes', [])
                ], CarouselComponent);
                return CarouselComponent;
            })();
            exports_1("CarouselComponent", CarouselComponent);
        }
    }
});
//# sourceMappingURL=app.index.banner.js.map