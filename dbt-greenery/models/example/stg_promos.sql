
with source as (

    select * from {{ source('tutorial', 'promos') }}

),

renamed as (

    select
        id,
        promo_id,
        discout AS discount,
        status

    from source

)

select * from renamed

