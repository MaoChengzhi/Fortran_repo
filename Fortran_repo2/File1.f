
program main
    implicit none
    real :: result
    integer :: species
    real :: mass, temperature, adsorption_energy
    real :: freq

    ! Explicit interface for ICE_THERMAL_DESORB
    interface
        real function ICE_THERMAL_DESORB(isp, mspecies, Tdust, Eads, Fvib_TST)
            implicit none
            integer, intent(in) :: isp
            real, intent(in) :: mspecies, Tdust, Eads
            real, intent(in), optional :: Fvib_TST
        end function ICE_THERMAL_DESORB
    end interface

    ! Example call
    species = 1
    mass = 1.67e-24
    temperature = 100.0
    adsorption_energy = 5000.0
    freq = 1e12  ! Optional argument
    
    result = ICE_THERMAL_DESORB(species, mass, temperature, adsorption_energy, freq)
    print *, "Evaporation rate:", result
end program main