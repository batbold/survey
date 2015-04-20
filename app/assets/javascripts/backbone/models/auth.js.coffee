class Survey.Models.Auth extends Backbone.Model
  paramRoot: 'auth'

  defaults:

class Survey.Collections.AuthsCollection extends Backbone.Collection
  model: Survey.Models.Auth
  url: '/auths'
