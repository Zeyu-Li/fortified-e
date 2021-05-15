program main

    implicit none
    integer :: iterations
    integer :: sum_total = 0
    integer :: counter = 0
    real :: rand, e = 0

    real :: temp = 0
    integer :: inner_counter

    write(*,"(A)",advance="no") "Number of iterations: "
    read *, iterations
    
    call random_number(rand)
    do while (counter < iterations)
        temp = 0
        inner_counter = 0
        do while (temp < 1)
            call random_number(rand)
            temp = rand + temp
            inner_counter = inner_counter + 1
        end do

        sum_total = sum_total + inner_counter
        counter = counter + 1
    end do

    e = real(sum_total) / real(iterations)
    ! print e
    ! print *, "e = ", sum_total
    print *, "e = ", e
end program main