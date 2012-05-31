dataSource {
    driverClassName = "org.postgresql.Driver"
    dbCreate = "update"
    username = "postgres"
    password = "postgres"
    url = "jdbc:postgresql://localhost/carsnet"
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
    dialect = 'org.hibernate.dialect.PostgreSQLDialect'
    show_sql = false
    format_sql = true
}
