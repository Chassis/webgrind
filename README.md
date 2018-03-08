# Webgrind
A Chassis extension to install and configure Webgrind on your Chassis server.
![Webgrind](https://bronsons-captured.s3.amazonaws.com/webgrind_of_vagrantwpwp-adminadmin-ajax.php_2017-06-22_22-56-11.png)

## Usage
1. Add this extension to your extensions directory `git clone git@github.com:Chassis/webgrind extensions/webgrind`
2. Run `vagrant provision`.
3. Open your web browser of choice and head to `http://vagrant.local/webgrind` or if you have a custom domain go to `http://yourdomain.local/webgrind`

### Setup
1. Install [Xdebug Helper](https://chrome.google.com/webstore/detail/xdebug-helper/eadndfjplgieldjbigjakmdgkmoaaaoc).
2. Go to `Settings -> More Tools -> Extensions` in Google Chrome.
3. Scroll down to `Xdebug helper` and click Options.
4. Change the `Profile Trigger Value` to `1` e.g.<br />![Xdebug Helper PHPStorm](https://bronsons-captured.s3.amazonaws.com/Xdebug_helper_2017-06-22_23-12-04.png)<br />
5. Enable Xdebug Profiling e.g.<br />![Xdebug Profliing](https://bronsons-captured.s3.amazonaws.com/profile.png)

