SELECT table_catalog, table_name
    FROM information_schema.tables
    WHERE table_type = 'BASE TABLE'
        AND table_schema = 'public'
    ORDER BY table_name;
