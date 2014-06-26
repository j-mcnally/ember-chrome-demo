BookmarksRoute = Ember.Route.extend

  model: (params) ->
    # Once promise logic is developed it can go here

  setupController: (controller, model) ->
    chrome.bookmarks.getTree (bookmarks) ->
      all_bookmarks = []
      walk = (bk) ->
        for b in bk
          all_bookmarks.push(b.title)
          if b.children?
            walk(b.children)
      walk(bookmarks)
      controller.set('bookmarks', all_bookmarks)


`export default BookmarksRoute;`
