## Installation
add to your application.js file
```js
//= require bigos_module.js
```

run install generator
```console
rails generate bigos_module:install
```
## Configuration


## Creating a module

Your module should implement frontend_widget and backend_widget methods - they should return view helper names as strings

```ruby
module YourModule
  ...
  class Interface < BigosModule::Base
    include BigosFbBox::Controllers::Helpers

    def self.frontend_widget
      "frontend_widget_helper_method"
    end

    def self.backend_widget
      "backend_widget_helper_method"
    end

  end
  ...
end
```

When creating a backend module make sure all admin controllers inherit from BigosModule::AdminController (for the sake of injecting authorization code)
```ruby
BigosModule.setup do |config|
  config.access_token = "injected code as string(ie. for device this could be 'before_filter :authenticate_admin_user!')"
end
...
class YourModuleAdminController < BigosModule::AdminController
...
```