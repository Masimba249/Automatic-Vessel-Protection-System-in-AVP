mtype = {Normal, Critical};

mtype pressure = Normal;          // Initial pressure state
bool escapeValveOpen = false;     // Initial state of the escape valve

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

active [1] proctype Control()
{
  do
  :: true ->
    // Make control decisions based on pressure state
    if
    :: pressure == Critical && !escapeValveOpen ->
      escapeValveOpen = true;    // Open escape valve when pressure is critical
    :: pressure != Critical && escapeValveOpen ->
      escapeValveOpen = false;   // Close escape valve when pressure is not critical
    fi;

    // Continue control actions
  od
}

init
{
  run PressureInvariant();  // Start the monitor process
  run Control();           // Start the control process

  // Check the LTL response property with weak fairness
  assert([] (pressure == Critical -> <> escapeValveOpen)) timeout 10;
}
