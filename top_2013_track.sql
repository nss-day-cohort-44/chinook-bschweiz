24. `top_2013_track.sql`: Provide a query that shows the most purchased track of 2013.

-- steve's code: 
with TopTracks as (
    select t.Name,
        count(t.Name) PurchaseCount
    from Track t
        join InvoiceLine l on l.TrackId = t.TrackId
        join Invoice i on l.InvoiceId = i.InvoiceId
    where strftime('%Y', i.InvoiceDate) = "2013"
    group by t.Name
    order by PurchaseCount desc
)
select Name,
    PurchaseCount
from TopTracks
where (
        select max(PurchaseCount)
        from TopTracks
    ) = PurchaseCount;