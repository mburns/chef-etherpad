[![Build Status](https://travis-ci.org/mburns/chef-etherpad.svg?branch=cleanup)](https://travis-ci.org/mburns/chef-etherpad)

etherpad Cookbook
======================

This cookbook installs etherpad-lite, a collaborative writing web application written in Node.js.

Code repo: https://github.com/mburns/chef-etherpad

#### etherpad::default
installs newer etherpad-lite

TODO:
* fix fedora, centos
* attributize and template settings.json

Requirements
------------
#### recipes
- `nodejs` - etherpad-lite runs on javascript

Attributes
----------
#### etherpad::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['etherpad']['packages']</tt></td>
    <td>Array</td>
    <td>list of dependency packages to be installed</td>
    <td><tt>*computed*</tt></td>
  </tr>
  <tr>
    <td><tt>['etherpad']['version']</tt></td>
    <td>String</td>
    <td>Version of Etherpad-lite to install</td>
    <td><tt>'1.5.6'</tt></td>
  </tr>
  <tr>
    <td><tt>['etherpad']['user']</tt></td>
    <td>String</td>
    <td>User to own the program and data files</td>
    <td><tt>'etherpad-user'</tt></td>
  </tr>
  <tr>
    <td><tt>['etherpad']['user_home']</tt></td>
    <td>String</td>
    <td>User's $HOMEDIR'</td>
    <td><tt>'/etherpad'</tt></td>
  </tr>
  <tr>
    <td><tt>['etherpad']['port']</tt></td>
    <td>Integer</td>
    <td>Port Number to bind server to</td>
    <td><tt>9001</tt></td>
  </tr>
</table>

Usage
-----
#### etherpad::default

Just include `etherpad::default` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[etherpad]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: 

* Computerlyrik (<chef-cookbooks@computerlyrik.de>)
* Michael Burns (<michael@mirwin.net>)
