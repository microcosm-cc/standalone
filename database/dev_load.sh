psql -U microcosm -h dev.microco.sm -d microcosm -f microcosm.sql
psql -U microcosm -h dev.microco.sm -d microcosm -f postinstall_config.sql
psql -U microcosm -h dev.microco.sm -d microcosm -f defaults.sql
psql -U microcosm -h dev.microco.sm -d microcosm -f mock_data_dev.sql
