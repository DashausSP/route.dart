// Auto-generated from portfolio.html.
// DO NOT EDIT.

library portfolio;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import '../lib/view.dart';
import 'package:web_ui/web_ui.dart';
import 'package:web_ui/watcher.dart' as watchers;
import 'dart:html';
import 'dart:async';
import '../../../lib/chopin.dart' as chopin;



class PortfolioComponent extends WebComponent {
  /** Autogenerated from the template. */

  /** CSS class constants. */
  static Map<String, String> _css = {};

  /**
   * Shadow root for this component. We use 'var' to allow simulating shadow DOM
   * on browsers that don't support this feature.
   */
  var _root;
  static final __html1 = new autogenerated.Element.html('<li class="">\n              <a href="" id="__e-2"></a>\n            </li>'), __html2 = new autogenerated.Element.html('<h1>Portfolio</h1>'), __html3 = new autogenerated.Element.html('<table class="table">\n          <tbody><tr>\n            <th>#</th>\n            <th>Name</th>\n            <th>Revenue</th>\n            <th></th>\n          </tr>\n          </tbody><tbody id="__e-17"></tbody>\n          </table>'), __html4 = new autogenerated.Element.html('<tr>\n            <td id="__e-6"></td>\n            <td><a href="" id="__e-8"></a></td>\n            <td id="__e-10"></td>\n            <td>\n              <a href="" id="__e-11">Expand</a>\n            </td>\n          </tr>'), __html5 = new autogenerated.Element.html('<tr>\n            <td id="__e-15" style="display:none"></td>\n          </tr>'), __html6 = new autogenerated.Element.html('<td colspan="4" template="" if="isExpanded(company)">\n              <x-view view-id="companyInfo" id="__e-13"></x-view>\n            </td>'), __html7 = new autogenerated.Element.tag('template'), __html8 = new autogenerated.Element.html('<x-view view-id="companyInfo"></x-view>'), __shadowTemplate = new autogenerated.DocumentFragment.html('''
        <ul class="nav nav-tabs">
          <template id="__e-4"></template>
        </ul>
        <template id="__e-19"></template>
        <template id="__e-22"></template>
      ''');
  autogenerated.Element __e19, __e22, __e4;
  autogenerated.Template __t;

  void created_autogenerated() {
    _root = createShadowRoot();
    __t = new autogenerated.Template(_root);
    _root.nodes.add(__shadowTemplate.clone(true));
    __e4 = _root.query('#__e-4');
    __t.loop(__e4, () => tabs, (tab, __t) {
      var __e2, __e3;
      __e3 = __html1.clone(true);
      __e2 = __e3.query('#__e-2');
      var __binding1 = __t.contentBind(() => tab['name'], false);
      __e2.nodes.add(__binding1);
      __t.listen(__e2.onClick, ($event) { showTab(tab, $event); });
      __t.bindClass(__e3, () => activeClass(tab), false);
    __t.addAll([new autogenerated.Text('\n            '),
        __e3,
        new autogenerated.Text('\n          ')]);
    });
    __e19 = _root.query('#__e-19');
    __t.conditional(__e19, () => activeTab == tabs[0], (__t) {
      var __e17, __e18;
      __e18 = __html3.clone(true);
      __e17 = __e18.query('#__e-17');
      __t.loop(__e17, () => companies, (company, __t) {
        var __e10, __e11, __e12, __e15, __e16, __e6, __e8;
        __e12 = __html4.clone(true);
        __e6 = __e12.query('#__e-6');
        var __binding5 = __t.contentBind(() => company['id'], false);
        __e6.nodes.add(__binding5);
        __e8 = __e12.query('#__e-8');
        var __binding7 = __t.contentBind(() => company['name'], false);
        __e8.nodes.add(__binding7);
        __t.listen(__e8.onClick, ($event) { openCompany(company, $event); });
        __e10 = __e12.query('#__e-10');
        var __binding9 = __t.contentBind(() => company['revenue'], false);
        __e10.nodes.add(__binding9);
        __e11 = __e12.query('#__e-11');
        __t.listen(__e11.onClick, ($event) { expandCompany(company, $event); });
        __e16 = __html5.clone(true);
        __e15 = __e16.query('#__e-15');
        __t.conditional(__e15, () => isExpanded(company), (__t) {
          var __e13, __e14;
          __e14 = __html6.clone(true);
          __e13 = __e14.query('#__e-13');
          __t.oneWayBind(() => company, (e) { if (__e13.xtag.company != e) __e13.xtag.company = e; }, false, false);
          __t.bind(() => null,  (__e) { __e13.xtag.viewId = 'companyInfo'; }, true);
          __t.component(new ViewComponent()..host = __e13);
        __t.add(__e14);
        });

      __t.addAll([new autogenerated.Text('\n          '),
          __e12,
          new autogenerated.Text('\n          '),
          __e16,
          new autogenerated.Text('\n          ')]);
      }, isTemplateElement: false);
    __t.addAll([new autogenerated.Text('\n          '),
        __html2.clone(true),
        new autogenerated.Text('\n          '),
        __e18,
        new autogenerated.Text('\n        ')]);
    });

    __e22 = _root.query('#__e-22');
    __t.loop(__e22, () => tabs.sublist(1), (tab, __t) {
      var __e21;
      __e21 = __html7.clone(true);
      __t.conditional(__e21, () => activeTab == tab, (__t) {
        var __e20;
        __e20 = __html8.clone(true);
        __t.oneWayBind(() => tab['userValue'], (e) { if (__e20.xtag.company != e) __e20.xtag.company = e; }, false, false);
        __t.oneWayBind(() => true, (e) { if (__e20.xtag.historyBound != e) __e20.xtag.historyBound = e; }, false, false);
        __t.bind(() => null,  (__e) { __e20.xtag.viewId = 'companyInfo'; }, true);
        __t.component(new ViewComponent()..host = __e20);
      __t.addAll([new autogenerated.Text('\n            '),
          __e20,
          new autogenerated.Text('\n          ')]);
      });

    __t.addAll([new autogenerated.Text('\n          '),
        __e21,
        new autogenerated.Text('\n        ')]);
    });
    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = __e4 = __e19 = __e22 = null;
  }

  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated.ShadowRoot) _root = this;
  }

  /** Original code from the component. */

  var expandedCompany;
  var expanded;
  var tabs = [{
    'name': 'Porfolio'
  }];
  var activeTab;
  var companies = [
    {
      'id': 100001,
      'name': 'Company 100001',
      'revenue': 3000000.00
    },
    {
      'id': 1111111,
      'name': 'Company 1111111',
      'revenue': 1001100.00
    },
    {
      'id': 100003,
      'name': 'Mom & Pop Shop',
      'revenue': 401000.00
    }
  ];
  
  created() {
    activeTab = tabs[0];
  }

  inserted() {
    // TODO(pavelgj): find a better API for accessing the view.
    parent.xtag.onTokenChange((newToken) {
      print('newToken = $newToken');
      if (newToken == null) {
        newToken = '';
      }
      var tokenInt = int.parse(newToken, onError: (s) => -1);
      if (newToken == '' || newToken == 'home' || tokenInt == -1) {
        showTab(tabs[0], null, updateUrl: true, replace: true, silent: true);
        return;
      }
      bool done = false;
      tabs.forEach((tab) {
        if (!done && tab['userValue'] != null && tab['userValue']['id'] == tokenInt) {
          showTab(tab, null, updateUrl: false, silent: true, setToken: false);
          done = true;
        }
      });
      if (done) return;
      companies.forEach((c) {
        if (c['id'] == tokenInt) {
          openCompany(c, null, setToken: false);
          done = true;
        }
      });
    });
  }
  
  void expandCompany(company, MouseEvent e) {
    if (expanded == company['id']) {
      expanded = null;
    } else {
      expanded = company['id'];
    }
    e.preventDefault();
    watchers.dispatch();
  }
  
  bool isExpanded(company) {
    return expanded == company['id'];
  }
  
  void openCompany(company, MouseEvent e, {setToken: true}) {
    if (e != null) {
      e.preventDefault();
    }
    
    tabs.add({
      'name': company['name'],
      'userValue': company
    });
    activeTab = tabs[tabs.length - 1];
    watchers.dispatch();
    
    if (setToken) {
      // set new history token...
      chopin.setToken(this, "${company['id']}", silent: false);
    }
  }
  
  String activeClass(tab) {
    if (tab == activeTab) {
      return "active";
    }
    return "";
  }
  
  showTab(tab, e, {updateUrl: true, replace: false, silent: false, setToken: true}) {
    if (e != null) {
      e.preventDefault();
    }
    activeTab = tab;
    watchers.dispatch();
    
    if (setToken) {
      var tkn = activeTab['userValue'] != null ? "${activeTab['userValue']['id']}" : "home";
      chopin.setToken(this, tkn, silent: silent, updateUrl: updateUrl, replace: replace);
    }
  }
}
//@ sourceMappingURL=portfolio.dart.map