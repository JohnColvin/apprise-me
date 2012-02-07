# apprise-me

This gem utilizes apprise confirms for any link_to with confirm as a parameter. It uses the apprise project found at https://github.com/ThrivingKings/Apprise for the Rails asset pipeline (available since Rails 3.1).

### Usage

To make use of this project add the following lines to 'app/assets/javascripts/application.js':

    //= require apprise-me

    $(document).ready(function({
      $("a[data-apprise-confirm]").appriseConfirm()
    })

and add the following line to 'app/assets/stylesheets/application.css'

    *= require apprise-me

This will activate apprise confirms for any link_to made with the confirm parameter:

    = link_to 'Remove User', user_path, :method => 'delete', :confirm => "Remove this user?"

### Installation

In your Gemfile, add this line:

    gem "apprise-me"

Then, run `bundle install`.

### Options

You can pass any apprise options to appriseConfirm. I use this as a default:

    $("a[data-apprise-confirm]").appriseConfirm({ verify: true, animate: 200 })

Any link_to can override apprise options with data attributes. Like this:

    = link_to 'Remove User', user_path, :method => 'delete', :confirm => "Remove this user?", 'data-animate' => 1000, "data-text-yes" => 'Oh yeah', "data-text-no" => 'Nah'

You can find list of apprise options at the apprise project homepage: http://thrivingkings.com/apprise/
