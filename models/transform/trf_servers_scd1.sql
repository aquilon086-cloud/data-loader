select *
from {{ source("lab3", "servers") }}
qualify row_number() over (partition by ID order by Updated_at desc) = 1
