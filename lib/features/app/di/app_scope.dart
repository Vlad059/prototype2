import '../../common/service/style/style_service.dart';
import '../../common/service/style/style_service_impl.dart';

abstract class IAppScope {
  IStyleService get appStyles;
}

class AppScope extends IAppScope{
  @override
  IStyleService appStyles = StyleService();
}