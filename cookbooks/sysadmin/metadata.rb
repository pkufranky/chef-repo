maintainer       "Letou, Inc"
maintainer_email "pkufranky@gmail.com"
license          "All rights reserved"
description      "Installs/Configures sysadmin"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
recipe            "sysadmin", "Install sys admin tools"

%w{ ubuntu debian }.each do |os|
	  supports os
end

%w{ apt }.each do |cb|
	  depends cb
end
