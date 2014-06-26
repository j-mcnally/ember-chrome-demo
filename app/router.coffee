`import Ember from 'ember'`;

Router = Ember.Router.extend
  location: EmberChromeDemoENV.locationType

Router.map ->
  @route 'index', { path: '/' }
  @route 'bookmarks'
  @route 'tabs'

`export default Router`;
