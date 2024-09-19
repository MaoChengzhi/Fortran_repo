real function area_2(radius)
implicit none
real, intent(in) :: radius
real, external ::area_0

area_2 = radius * 2.0  ! Simple example function
print*, "area_2"

end function area_2