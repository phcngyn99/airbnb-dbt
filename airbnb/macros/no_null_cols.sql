{% macro no_null_cols(table) %}

  SELECT *
  FROM {{ table }}
  WHERE
    {% for col in adapter.get_columns_in_relation(table)  -%}
        {{col.column}} IS NULL OR
    {% endfor %}
    FALSE
{% endmacro %}