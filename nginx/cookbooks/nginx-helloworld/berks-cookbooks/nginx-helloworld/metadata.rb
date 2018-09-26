name 'nginx-helloworld'
maintainer 'Zander Hamidi'
maintainer_email 'zander.hamidi@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures nginx docker image serving Hello World on port 80'
long_description 'Installs/Configures nginx-helloworld'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/nginx-helloworld/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/nginx-helloworld'

depends 'apt'
depends 'docker'

