class profile::fw {
    class { '::firewall':} 
    resources { "firewall": purge => true,}
    create_resources('firewall', hiera_hash('firewall_rules_common', {}))
    create_resources('firewall', hiera_hash('firewall_rules_specific', {}))
    create_resources('firewallchain', hiera_hash('firewall_default_policies', {}))
}
