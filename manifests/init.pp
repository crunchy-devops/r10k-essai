# increase fact length
$conf_dir = $facts['os']['family'] ? {
      'windows' => "${facts['common_appdata']}/PuppetLabs/puppet/etc",
      default => '/etc/puppetlabs/puppet'
  }

  ini_setting { 'puppet agent: fact_value_length_soft_limit':
      ensure => present,
      path => "${conf_dir}/puppet.conf",
      section => 'agent',
      setting => 'fact_value_length_soft_limit',
     value => '8192'
  }
