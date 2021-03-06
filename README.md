rabbitmq-auth-backend-rails
===========================
A sample Rails application the RabbitMQ plugin 
[rabbitmq-auth-backend-http](https://github.com/simonmacmullen/rabbitmq-auth-backend-http) can authenticate against.
The application is using [devise](https://github.com/plataformatec/devise) for user authentication.

This is only an example how to use rabbitmq-auth-backend-http with ruby on rails.

Prerequisites
===========================
  - rabbitmq-server
  - the rabbitmq server plugin [rabbitmq-auth-backend-http](https://github.com/simonmacmullen/rabbitmq-auth-backend-http)

Configuration
===========================
The sample rails application is configured to have the following routes you can use with rabbitmq-auth-backend-http.
<pre>
$ rake routes
auth_user       GET   /auth/user(.:format)      auth#user
auth_vhost      GET   /auth/vhost(.:format)     auth#vhost
auth_resource   GET   /auth/resource(.:format)  auth#resource
</pre>
The rabbitmq plugin needs these routes to do HTTP requests against them. A sample minimal configuration file 
<tt>rabbitmq.conf</tt> according to the routes above looks like this:
<pre>
[
  {rabbit, [{auth_backends, [rabbit_auth_backend_http]}]},
  {rabbitmq_auth_backend_http,
   [{user_path,     "http://0.0.0.0:3000/auth/user"},
    {vhost_path,    "http://0.0.0.0:3000/auth/vhost"},
    {resource_path, "http://0.0.0.0:3000/auth/resource"}]}
].
</pre>
