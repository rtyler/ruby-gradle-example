# Ruby + Gradle Example

This project relies heavily on the marvelous [TorqueBox Rubygems Maven repo](http://rubygems-proxy.torquebox.org/).


## Usage

In order to prepare the dependencies for the JRuby application you must invoke
gradle:

```bash
% ./gradlew prepare war
```

This will do a few things:

 1. Resolve Ruby gem dependencies
 1. Resolve Java dependencies
 1. Extract Ruby gems into `vendor/`
 1. Cache jars into `.jarcache/` (for easily referencing at JRuby interpreter runtime)
 1. Create a runnable `.war` of what's in `src/main/webapp`

Once that's been run, you can simply run `ruby app.rb` and the Sinatra app will
load up out of `vendor/` and `.jarcache`!

(*Note:* This assumes you have a local JRuby install for interpreting app.rb)

### Running locally

```bash
    % PATH=./vendor/bin:$PATH GEM_HOME=./vendor rackup src/main/webapp/WEB-INF/config.ru
```
