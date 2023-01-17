program hello
  print *, 'hello world'
#ifdef __GFORTRAN__
# ifdef __linux__
  print *, "gfortran'
  print *, 'OSLINUX'
# endif
# ifdef __APPLE__
  print *, "gfortran'
  print *, 'OSMAC'
# endif
# ifdef _WIN32
  print *, "gfortran'
  print *, 'OSWIN'
# endif
#endif
#ifdef __INTEL_COMPILER
# ifdef __linux__
  print *, 'Intel'
  print *, 'OSLINUX'
# endif
# ifdef __APPLE__
  print *, 'Intel'
  print *, 'OSMAC'
# endif
# ifdef _WIN32
  print *, 'Intel'
  print *, 'OSWIN'
# endif
#endif
end program hello