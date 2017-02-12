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

import {Component, View} from 'angular2/core';

@Component({
    selector: 'carousel',
})
@View({
	templateUrl: '/app/components/app.index.banner.html'
	})
export class CarouselComponent {
  public items: string[] = ['1','2'];
	constructor(){this.items=['1','2']}
}
