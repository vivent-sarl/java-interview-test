create table ref_metrics
(
    timestamp    timestamp with time zone                              not null,
    source_id    text                                                  not null,
    metric_name  text                                                  not null,
    metric_value double precision                                      not null,
    updated_ts   timestamp with time zone default CURRENT_TIMESTAMP(3) not null
);

create unique index ref_metrics_idx_2
    on ref_metrics (source_id asc, metric_name asc, timestamp desc);
