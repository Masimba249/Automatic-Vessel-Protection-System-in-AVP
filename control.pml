proctype control(chan env_to_control, chan control_to_env)
{
  bool escapeValveOpen = false;  // Initial state of the escape valve
  int pressureThreshold = 10;    // Pressure threshold for decision-making

  do
  :: true ->
    // Receive pressure value from environment
    int pressure;
    control_to_env?pressure;

    // Make control decisions based on pressure value
    if
    :: pressure > pressureThreshold ->
      escapeValveOpen = true;    // Open escape valve if pressure exceeds threshold
    :: pressure <= pressureThreshold ->
      escapeValveOpen = false;   // Close escape valve if pressure is below or equal to threshold
    fi;

    // Send control decision to environment
    env_to_control!escapeValveOpen;

    // Continue the loop to receive new pressure values and make control decisions
  od
}
