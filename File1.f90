program area

    real :: a
    real,external :: area_0, area_1, area_2

    a= area_1(2.0)
    print*, a

    
    end program area