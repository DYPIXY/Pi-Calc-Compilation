! Nilakantha.f90
program Nilakantha
  implicit none

  integer, parameter :: n = 1000000
  integer :: k
  real(8) :: pi, term

  ! Inicialize pi com o valor inicial da fórmula
  pi = 3.0d0

  ! Loop principal
  do k = 1, n
    term = 4.0d0 / ((2.0d0 * k) * (2.0d0 * k + 1.0d0) * (2.0d0 * k + 2.0d0))

    ! Alterne os sinais dos termos
    if (mod(k, 2) == 1) then
      pi = pi + term
    else
      pi = pi - term
    end if
  end do

  ! Imprima o valor calculado de pi
  print *, "Valor de pi: ", pi

end program Nilakantha
