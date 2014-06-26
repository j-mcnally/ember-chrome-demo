BookmarksRoute = Ember.Route.extend

  model: (params) ->
    # Once promise logic is developed it can go here

  setupController: (controller, model) ->
    if chrome.bookmarks?
      chrome.bookmarks.getTree (bookmarks) ->
        all_bookmarks = []
        walk = (bk) ->
          for b in bk
            all_bookmarks.push(b.title)
            if b.children?
              walk(b.children)
        walk(bookmarks)
        controller.set('bookmarks', all_bookmarks)
    else
      controller.set('bookmarks', ["test1", "test2", "test3"])


`export default BookmarksRoute;`
