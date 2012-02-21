
app = node.run_state[:current_app]

## First, install any application specific packages
if app['packages']
  app['packages'].each do |pkg,ver|
    package pkg do
      action :install
      version ver if ver && ver.length > 0
    end
  end
end

## Next, install any application specific gems
if app['gems']
  app['gems'].each do |gem,ver|
    gem_package gem do
      action :install
      version ver if ver && ver.length > 0
    end
  end
end

if app['pears']
  include_recipe "php"
  app['pears'].each do |pear,ver|
    php_pear pear do
      action :install
      version ver if ver && ver.length > 0
    end
  end
end

if app['pips']
  include_recipe "python"
  app['pips'].each do |pip,ver|
    python_pip pip do
      version ver if ver && ver.length > 0
      action :install
    end
  end
end
