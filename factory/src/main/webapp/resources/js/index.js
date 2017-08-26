(function() {
  var RunBlock, drawerApp, routeProviderApp;

  routeProviderApp = function($routeProvider) {
    $routeProvider.when('/', {
      template: '<br> <h3 class="mdl-grid mdl-grid-center">Hello World！</h3> <br> <h5 class="mdl-grid mdl-grid-center">Material Design Lite v1.0.4</h5> <div class="mdl-grid mdl-grid-center">+</div> <h5 class="mdl-grid mdl-grid-center">Angular v1.4.4</h5> <div class="mdl-grid mdl-grid-center">+</div> <h5 class="mdl-grid mdl-grid-center">ngRoute v1.4.4</h5> <br> <div class="somecode"> <pre class="mdl-grid mdl-grid-center"> angular<br> &nbsp;&nbsp;.module("app", ["ngRoute"])<br> &nbsp;&nbsp;.run(["$rootScope", function($rootScope) {<br> &nbsp;&nbsp;&nbsp;&nbsp;$rootScope.$on("$viewContentLoaded", function() {<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;componentHandler.upgradeAllRegistered();<br> &nbsp;&nbsp;&nbsp;&nbsp;});<br> &nbsp;&nbsp;}]);</pre></div> <br>'
    }).when('/demo', {
      template: '<div class="mdl-grid mdl-grid-center"> <div class="mdl-cell mdl-cell--5-col"> <h4>Demo</h4> <form> <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"> <input id="textfield1" type="text" class="mdl-textfield__input"> <label for="textfield1" class="mdl-textfield__label">Angular</label> </div> <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"> <input id="textfield2" type="email" class="mdl-textfield__input"> <label for="textfield2" class="mdl-textfield__label">Material</label> </div> <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"> <textarea id="textfield4" type="text" rows="3" class="mdl-textfield__input"></textarea> <label for="textfield4" class="mdl-textfield__label">Angular & Material</label> </div> <br> <bitton class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button-theme-1">Raised Button</bitton> <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button-theme-2">Flat Button</button> </form> </div> <div class="mdl-cell mdl-cell--12-col"> <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp"> <thead> <tr> <th class="mdl-data-table__cell--non-numeric">Material</th> <th>Quantity</th> <th>Unit price</th> </tr> </thead> <tbody> <tr> <td class="mdl-data-table__cell--non-numeric">Acrylic (Transparent)</td> <td>25</td> <td>$2.90</td> </tr> <tr> <td class="mdl-data-table__cell--non-numeric">Plywood (Birch)</td> <td>50</td> <td>$1.25</td> </tr> <tr> <td class="mdl-data-table__cell--non-numeric">Laminate (Gold on Blue)</td> <td>10</td> <td>$2.35</td> </tr> </tbody> </table> </div> </div>'
    }).otherwise({
      redirectTo: '/'
    });
  };

  RunBlock = (function() {
    RunBlock.$inject = ['$rootScope'];

    function RunBlock($rootScope) {
      $rootScope.$on('$viewContentLoaded', function() {
        return componentHandler.upgradeAllRegistered();
      });
    }

    return RunBlock;

  })();

  drawerApp = function() {
    return {
      restrict: 'A',
      link: function($scope, $element, $attrs) {
        $element.bind('click', function() {
          $element.removeClass('is-visible');
        });
      }
    };
  };

  angular.module('App', ['ngRoute']).config(['$routeProvider', routeProviderApp]).run(RunBlock).directive('closeDrawer', [drawerApp]);

}).call(this);