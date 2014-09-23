import "secret.pp"

node 'dev.microco.sm' {

    ### Database ###
    class {'postgresql::server':
        ip_mask_allow_all_users    => '0.0.0.0/0',
        listen_addresses           => '*',
        ipv4acls                   => ['host microcosm microcosm * md5'],
    }

    postgresql::server::db { 'microcosm':
        user     => 'microcosm',
        password => $microcosm_pg_pass,
    }

    include microcosm
    include microcosm::api

    user { 'deployment':
        ensure     => 'present',
        comment    => 'Deployment User',
        managehome => true,
        gid        => 'microcosm',
        shell      => '/bin/bash',
        require    => Group['microcosm'],
    }

    ssh_authorized_key { 'deployment':
        ensure  => present,
        type    => 'ssh-rsa',
        key     => $deployment_key,
        name    => 'deployment',
        user    => 'deployment',
        require => User['deployment'],
    }

    sudo::conf { 'deployment':
        priority => 10,
        content  => 'deployment ALL=(ALL) NOPASSWD: ALL',
    }
}
