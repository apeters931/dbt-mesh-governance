{% for source_schema in project_evaluator_source_location_prod %}

  select * from {{ source_schema }}.int_all_graph_resources

  {% if not loop.last %} union all {% endif %}

{% endfor %}
