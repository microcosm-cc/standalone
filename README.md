Microcosm development VM
========================

This is a virtual machine, provisioned by puppet, which will run the entire Microcosm stack on a single VM. It's meant so that you can experiment with your own Microcosm instance in the simplest possible way.

The stack consists of:

* PostgreSQL database listening on localhost. See the `database` directory for schema and initial data
* API written in Go, deployed as a single binary, listening on localhost 8080 by default
* Frontend web app written in Django
* Nginx to serve static files and act as a reverse proxy in front of the Django web app.

Getting started
---------------

You will need: 
 * Vagrant 1.5 or later ([download here](http://www.vagrantup.com/downloads.html))
 * Puppet 3.7 or later ([download here](http://info.puppetlabs.com/download-puppet-open-source.html)]
 * librarian-puppet 1.3 or later ([details here](https://github.com/rodjek/librarian-puppet)).

Once you have these installed, change to the `puppet` directory and run:

```
librarian-puppet update
```

This will fetch the modules needed for provisioning the VM. 

Then copy `secret.pp.example` to `secret.pp` and fill in your credentials.

Now run:

```
vagrant up
```

Once this has finished, you can deploy the application code.

Vagrant cloud VM coming soon.

Deploying microcosm
-------------------

(Incomplete)

On the first run, you must set up the database.

You then need to deploy the API binary.

Then you need to deploy the fronted web app.

Once you've done this, you can visit [dev.microco.sm](http://dev.microco.sm) and see your forum instance running.

Can I use this in production?
-----------------------------

This isn't far from what you could run in production for a small forum.

The main omission is firewall configuration - this is left to you. You should also lock down the permitted database clients.

It's obviously not possible to scale out a single VM, which means you should split the manifests into separate nodes if you intend to be highly available or handle significant load.
