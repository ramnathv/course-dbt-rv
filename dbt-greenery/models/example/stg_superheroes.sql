{{
    config(
        materialized='table'
    )
}}

SELECT
    id AS superhero_id,
    name,
    gender,
    eye_color,
    race,
    hair_color,
    height,
    publisher,
    skin_color,
    alignment,
    NULLIF(weight, -99) AS weight
FROM {{ source('tutorial', 'superheroes') }}