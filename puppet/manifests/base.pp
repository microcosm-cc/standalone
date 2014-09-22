import "secret.pp"

node 'dev.microco.sm' {

    class {'postgresql::server':
        ip_mask_allow_all_users    => '0.0.0.0/0',
        listen_addresses           => '*',
        ipv4acls                   => ['host microcosm microcosm * md5'],
    }

    postgresql::server::db { 'microcosm':
        user     => 'microcosm',
        password => $microcosm_pg_pass,
    }

}
