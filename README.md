# Presentation

This project replaces 4 files on Centreon WEB to allow Google authentication via OpenID

The files are:

  * /usr/share/centreon/www/include/Administration/parameters/DB-Func.php
  * /usr/share/centreon/www/include/Administration/parameters/general/form.php
  * /usr/share/centreon/www/include/Administration/parameters/general/form.ihtml
  * /usr/share/centreon/www/class/centreonAuth.SSO.class.php

# Installation

To install it, execute install.sh
This script will copy the original files to the backup folder
Then it will replace the Centreon's files with the files from patch folder

