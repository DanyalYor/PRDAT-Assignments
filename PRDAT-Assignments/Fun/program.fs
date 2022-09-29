let rec pow x = 
    let rec inner y = 
        if y = 1 then
            x
        else 
            (pow x * inner) (inner-1)

    inner
