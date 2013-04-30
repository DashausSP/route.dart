// Auto-generated from company-info.html.
// DO NOT EDIT.

library companyinfo;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';
import '../routable-component.dart';
import 'dart:html';
import 'package:web_ui/watcher.dart' as watchers;
import 'package:route/client.dart';



class CompanyInfoComponent extends RoutableWebComponent  with Observable {
  /** Autogenerated from the template. */

  /** CSS class constants. */
  static Map<String, String> _css = {};

  /**
   * Shadow root for this component. We use 'var' to allow simulating shadow DOM
   * on browsers that don't support this feature.
   */
  var _root;
  static final __html1 = new autogenerated.Element.tag('template'), __html2 = new autogenerated.Element.tag('h2'), __html3 = new autogenerated.ParagraphElement(), __html4 = new autogenerated.ParagraphElement(), __html5 = new autogenerated.Element.html('<p>....</p>'), __html6 = new autogenerated.Element.tag('h2'), __html7 = new autogenerated.Element.html('<p>....</p>'), __html8 = new autogenerated.Element.tag('h2'), __shadowTemplate = new autogenerated.DocumentFragment.html('''
        <ul class="nav nav-pills">
          <li class="">
            <a>Info</a>
          </li>
          <li class="">
            <a>Activities</a>
          </li>
          <li class="">
            <a>Notes</a>
          </li>
        </ul>
        <template></template>
        <template></template>
        <template></template>
        <script type="application/dart" src="company-info.dart"></script>
      ''');
  autogenerated.AnchorElement __e20, __e22, __e24;
  autogenerated.Element __e33, __e36, __e39;
  autogenerated.LIElement __e21, __e23, __e25;
  autogenerated.Template __t;

  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    _root.nodes.add(__shadowTemplate.clone(true));
    __e21 = _root.nodes[1].nodes[1];
    __e20 = __e21.nodes[1];
    __t.oneWayBind(() => infoUrl, (e) { if (__e20.href != e) __e20.href = e; }, false, true);
    __t.bindClass(__e21, () => activeClass('info'), false);
    __e23 = _root.nodes[1].nodes[3];
    __e22 = __e23.nodes[1];
    __t.oneWayBind(() => activitiesUrl, (e) { if (__e22.href != e) __e22.href = e; }, false, true);
    __t.bindClass(__e23, () => activeClass('activities'), false);
    __e25 = _root.nodes[1].nodes[5];
    __e24 = __e25.nodes[1];
    __t.oneWayBind(() => notesUrl, (e) { if (__e24.href != e) __e24.href = e; }, false, true);
    __t.bindClass(__e25, () => activeClass('notes'), false);
    __e33 = _root.nodes[3];
    __t.conditional(__e33, () => section == 'info', (__t) {
      var __e32;
      __e32 = __html1.clone(true);
      __t.conditional(__e32, () => company != null, (__t) {
        var __e27, __e29, __e31;
        __e27 = __html2.clone(true);
        var __binding26 = __t.contentBind(() => company['name'], false);
        __e27.nodes.addAll([__binding26,
            new autogenerated.Text(': Info')]);
        __e29 = __html3.clone(true);
        var __binding28 = __t.contentBind(() => company['id'], false);
        __e29.nodes.addAll([new autogenerated.Text('id: '),
            __binding28]);
        __e31 = __html4.clone(true);
        var __binding30 = __t.contentBind(() => company['revenue'], false);
        __e31.nodes.addAll([new autogenerated.Text('revenue: '),
            __binding30]);
      __t.addAll([new autogenerated.Text('\n            '),
          __e27,
          new autogenerated.Text('\n            '),
          __e29,
          new autogenerated.Text('\n            '),
          __e31,
          new autogenerated.Text('\n          ')]);
      });

    __t.addAll([new autogenerated.Text('\n          '),
        __e32,
        new autogenerated.Text('\n        ')]);
    });

    __e36 = _root.nodes[5];
    __t.conditional(__e36, () => section == 'activities', (__t) {
      var __e35;
      __e35 = __html6.clone(true);
      var __binding34 = __t.contentBind(() => company['name'], false);
      __e35.nodes.addAll([__binding34,
          new autogenerated.Text(': Activities')]);
    __t.addAll([new autogenerated.Text('\n          '),
        __e35,
        new autogenerated.Text('\n          '),
        __html5.clone(true),
        new autogenerated.Text('\n        ')]);
    });

    __e39 = _root.nodes[7];
    __t.conditional(__e39, () => section == 'notes', (__t) {
      var __e38;
      __e38 = __html8.clone(true);
      var __binding37 = __t.contentBind(() => company['name'], false);
      __e38.nodes.addAll([__binding37,
          new autogenerated.Text(': Notes')]);
    __t.addAll([new autogenerated.Text('\n          '),
        __e38,
        new autogenerated.Text('\n          '),
        __html7.clone(true),
        new autogenerated.Text('\n        ')]);
    });

    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = __e21 = __e20 = __e23 = __e22 = __e25 = __e24 = __e33 = __e36 = __e39 = null;
  }

  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
  }

  /** Original code from the component. */


  var company;
  Router router;
  String __$section;
  String get section {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'section');
    }
    return __$section;
  }
  set section(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'section',
          __$section, value);
    }
    __$section = value;
  }
  String __$infoUrl;
  String get infoUrl {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'infoUrl');
    }
    return __$infoUrl;
  }
  set infoUrl(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'infoUrl',
          __$infoUrl, value);
    }
    __$infoUrl = value;
  }
  String __$activitiesUrl;
  String get activitiesUrl {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'activitiesUrl');
    }
    return __$activitiesUrl;
  }
  set activitiesUrl(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'activitiesUrl',
          __$activitiesUrl, value);
    }
    __$activitiesUrl = value;
  }
  String __$notesUrl;
  String get notesUrl {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'notesUrl');
    }
    return __$notesUrl;
  }
  set notesUrl(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'notesUrl',
          __$notesUrl, value);
    }
    __$notesUrl = value;
  }

  void configureRouter(Router router) {
    print('CompanyInfoComponent configure router');
    this.router = router
      ..addRoute(
          name: 'info',
          defaultRoute: true,
          path: '/info',
          enter: (_) => showSection('info'))
      ..addRoute(
          name: 'activities',
          path: '/activities',
          enter: (_) => showSection('activities'))
      ..addRoute(
          name: 'notes',
          path: '/notes',
          enter: (_) => showSection('notes'));

    router.onRoute.listen((_) {
      infoUrl = router.url('info');
      activitiesUrl = router.url('activities');
      notesUrl = router.url('notes');
    });
  }

  showSection(section) {
    print('show section $section');
    this.section = section;
  }

  gotoSection(section, e) {
    if (e != null) {
      e.preventDefault();
    }
    router.go(section, {}).then((allowed) {
      if (allowed) {
        showSection(section);
        watchers.dispatch();
      }
    });
  }

  String activeClass(sect) {
    if (sect == section) {
      return "active";
    }
    return "";
  }
}
//@ sourceMappingURL=company-info.dart.map