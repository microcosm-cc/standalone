import "secret.pp"

# Determines whether the backend will send notifications, etc.
$microcosm_environment = "dev"

$frontend_listen_ip = "10.11.12.13"
$frontend_listen_port = "80"

$microcosm_backend_port = "8080"
$microcosm_domain = "microco.sm"

$postgres_backend_private_ip = "127.0.0.1"
$postgres_port = 5432
$postgres_database = "microcosm"

$memcached_api_backend_private_ip = "127.0.0.1"
$memcached_api_backend_port = "11211"

$elasticsearch_private_ip = "127.0.0.1"
$elasticsearch_host = "9999"

# URL to verify Persona assertions against
$persona_verifier_url = "https://verifier.login.persona.org/verify"

node 'dev.microco.sm' {

    ### Database ###
    class {'postgresql::server':
        ip_mask_allow_all_users    => '0.0.0.0/0',
        listen_addresses           => '*',
        ipv4acls                   => ['host microcosm microcosm * md5'],
    }

    postgresql::server::db { 'microcosm':
        user     => 'microcosm',
        password => $postgres_password,
    }

    include microcosm
    include microcosm::api
    include microcosm::frontend

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
