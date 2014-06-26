TabsRoute = Ember.Route.extend

  model: (params) ->
    # Once promise logic is developed it can go here

  setupController: (controller, model) ->
    if chrome.tabs?
      chrome.tabs.query {currentWindow: true}, (tabs) ->
        tab_titles = (tabs) ->
          all_tabs = []
          for tab in tabs
            all_tabs.push(tab.title)
          all_tabs
          
        controller.set('tabs', tab_titles(tabs))
    else
      controller.set('tabs', ["tab1", "tab2", "tab3"])


`export default TabsRoute;`
