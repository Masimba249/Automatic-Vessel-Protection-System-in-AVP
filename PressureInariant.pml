mtype = {Normal, Critical};

mtype pressure = Normal;  // Initial pressure state

active [1] monitor PressureInvariant()
{
  do
  :: true ->
    // Check the current pressure state
    if
    :: pressure == Normal ->
      // Pressure is normal, continue monitoring
    :: pressure == Critical ->
      // Pressure is critical, raise an error or take appropriate action
      printf("Error: Pressure is critical! Action required.\n");
      assert(false);  // Assertion failure to indicate violation of invariant
    fi;
  od
}
