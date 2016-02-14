import {bootstrap}    from 'angular2/platform/browser'
import {CopyRightComponent} from './components/app.copyright'
import {VersionComponent} from './components/app.version'
import {CarouselComponent} from './components/app.index.banner';

bootstrap(CopyRightComponent);
bootstrap(VersionComponent);
bootstrap(CarouselComponent);
