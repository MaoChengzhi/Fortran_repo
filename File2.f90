real function area_0(length,b)
implicit none
real, intent(in) :: length
real, intent(in), optional :: b


if (present(b)) then
! If width is provided, calculate the area of a rectangle
area_0 = length * b
else
! If width is not provided, calculate the area of a square
area_0 = length * length
end if

print*,"area_0"

end function area_0










real function area_1(radius)
implicit none
real, intent(in) :: radius
! real, external ::area_of_square

# some edit for another branch

interface
real function area_0(length, b)
implicit none
real, intent(in) :: length
real, intent(in), optional :: b
end function area_0
end interface



area_1 = area_0(radius)**2
print*, "area_1"
area_1=radius*radius

end function area_1