# Ruby + Gradle Example

This project relies heavily on the marvelous [TorqueBox Rubygems Maven
repo](http://rubygems-proxy.torquebox.org/) and my own
[jruby-gradle-plugin](http://plugins.gradle.org/plugin/com.lookout.jruby)


## Usage

In order to prepare the dependencies for the JRuby application you must invoke
gradle:

```bash
% ./gradlew jrubyWar
```

This will do a few things:

 1. Resolve Ruby gem dependencies
 1. Resolve Java dependencies
 1. Extract Ruby gems into `vendor/`
 1. Cache jars into `.jarcache/` (for easily referencing at JRuby interpreter runtime)
 1. Create a runnable `.war` of what's in `src/main/webapp`


### Running locally

```bash
% PATH=./vendor/bin:$PATH GEM_HOME=./vendor rackup src/main/webapp/WEB-INF/config.ru
```

## Requirements

 * JRuby (for one form of local development)
 * Rubygems (`gem`) for extracting gems
 * Java 7
