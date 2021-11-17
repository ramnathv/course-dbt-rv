
with source as (

    select * from {{ source('tutorial', 'products') }}

),

renamed as (

    select
        id,
        product_id,
        name,
        price,
        quantity

    from source

)

select * from renamed

