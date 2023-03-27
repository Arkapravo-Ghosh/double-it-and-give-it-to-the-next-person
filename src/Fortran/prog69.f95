program double
  implicit none
  
  character(len=80) prompt
  integer :: number, doubled_number, i, n
  character(10) :: input_str
  character(80) :: output_str
  
  prompt = "Enter a number: "
  
  write(*,*) prompt
  read(*, '(a)') input_str
  
  ! Convert input string to integer
  number = 0
  n = len_trim(input_str)
  do i = 1, n
    number = number * 10 + ichar(input_str(i:i)) - ichar('0')
  end do
  
  ! Double the number
  doubled_number = number * 2
  
  ! Convert the doubled number to a string and reverse the order of the digits
  output_str = "Double it and give it to the next person: " // trim(adjustl(str(doubled_number)))
  write(*, '(a)') output_str
  
  stop
end program double