# Webgrind
A Chassis extension to install and configure Webgrind on your Chassis server.

## Usage
1. Add this extension to your extensions directory `git clone git@github.com:Chassis/webgrind extensions/webgrind`
2. Run `vagrant provision`.
3. Open your web browser of choice and head to `http://vagrant.local/webgrind` or if you have a custom domain go to `http://yourdomain.local/webgrind`

## Dependencies

You'll need to have the Chassis [Xdebug](https://github.com/Chassis/Xdebug) installed for this to work as well as we haven't shipped extensions that require dependencies yet but that's coming soon!

### Setup
1. Install [Xdebug Helper](https://chrome.google.com/webstore/detail/xdebug-helper/eadndfjplgieldjbigjakmdgkmoaaaoc).
2. Go to `Settings -> More Tools -> Extensions` in Google Chrome.
3. Scroll down to `Xdebug helper` and click Options.
4. Change the `Profile Trigger Value` to `1` e.g.<br />![Xdebug Helper PHPStorm](https://bronsons-captured.s3.amazonaws.com/Xdebug_helper_2017-06-22_23-12-04.png)<br />
5. Enable Xdebug Profiling e.g.<br />![Xdebug Profliing](https://bronsons-captured.s3.amazonaws.com/profile.png)

