# Doorman #

[![Build Status](https://travis-ci.org/pauloconnor/pauloconnor-doorman.png)](https://travis-ci.org/pauloconnor/pauloconnor-doorman)

This is the doorman module. It provides Doorman which is an Oauth Proxy. This allows you to use GitHub or Google as Oauth providers to enable authentication.

Doorman will proxy all requests to the specified host and port.

## Usage

To use, add it to your manifests:

	class {'doorman':
	  listen_port       => 80,
	  proxy_host        => 'localhost',
	  proxy_port        => 8080,
	  session_secret    => 'fjiroejiforsaifj;dsa',
	  github            => true,
	  github_app_id     => 'ufrafudhsiafuhr',
	  github_app_secret => 'fjdsoaf0348jffwujfdsa8ds',
	  github_org_name   => 'pauloconnor',
	  google            => true,
  	google_app_id     => 'fdsafdsafdsa',
  	google_app_secret => 'fdsafdsafdsa',
  	google_domain     => 'google.com'
	}

To get your access keys and secrets, register your application at GitHub and/or Google