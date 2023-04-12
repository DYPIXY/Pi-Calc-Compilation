! Chudnovsky_simple.f90
program Chudnovsky_simple
  implicit none

  integer, parameter :: n = 10
  integer :: k
  real(8) :: pi, sum, term, a, b, c, factor

  ! Constante de Chudnovsky
  c = 640320.0d0**3

  ! Inicialize a soma
  sum = 0.0d0

  ! Loop principal
  do k = 0, n
    ! Calcule os termos
    a = factorial(6 * k) * (13591409.0d0 + 545140134.0d0 * k)
    b = factorial(3 * k) * (factorial(k)**3) * (c**(3 * k))
    term = a / b

    ! Adicione o termo à soma
    sum = sum + term

    ! Verifique a convergência
    if (abs(term) < 1.0d-15) exit
  end do

  ! Calcule pi
  pi = 1.0d0 / (12.0d0 * sum)

  ! Imprima o valor calculado de pi
  print *, "Valor de pi: ", pi

contains

  ! Função de fatorial
  recursive function factorial(n) result(f)
    integer, intent(in) :: n
    integer :: f

    if (n <= 1) then
      f = 1
    else
      f = n * factorial(n - 1)
    end if
  end function factorial

end program Chudnovsky_simple
