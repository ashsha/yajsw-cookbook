
# yajsw download location
# TODO figure out how to get permalinks from sourceforge
default['yajsw']['url'] = 'http://softlayer-dal.dl.sourceforge.net/project/yajsw/yajsw/yajsw-stable-11.11/yajsw-stable-11.11.zip'
default['yajsw']['file'] = 'yajsw-stable-11.11.zip'
default['yajsw']['checksum'] = '3b4fff8475e48cb001c38a42c27c953b'
default['yajsw']['dirname'] = 'yajsw-stable-11.11'

# yajsw install location
default['yajsw']['basedir'] = '/usr/local'
default['yajsw']['appsdir'] = '/usr/local/yajsw_apps'
default['yajsw']['pidfile_dir'] = '/var/run'

# yajsw user
default['yajsw']['user'] = 'root'

# should yajsw use data bags to collect application config?
default['yajsw']['use_data_bag'] = false
default['yajsw']['data_bag_name'] = 'yajsw_apps'
default['yajsw']['use_env_data_bags'] = true

# array of yajsw managed applications
default['yajsw']['apps'] = [{
                              'name' => 'myapp',
                              'user' => 'yajsw',
                              'initmemory' => 64,
                              'maxmemory' => 256,
                              'mainclass' => 'com.company.myapp',
                              'jar' => 'lib/com.company.myapp.jar',
                              'logfile' => {
                                'maxfiles' => 10,
                                'maxsize' => '10m',
                                'loglevel' => 'INFO'
                              }
                            }]
