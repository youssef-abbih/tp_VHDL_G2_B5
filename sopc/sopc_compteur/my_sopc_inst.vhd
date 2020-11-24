  --Example instantiation for system 'my_sopc'
  my_sopc_inst : my_sopc
    port map(
      out_port_from_the_leds => out_port_from_the_leds,
      out_pwm_from_the_avalon_pwm_0 => out_pwm_from_the_avalon_pwm_0,
      clk_0 => clk_0,
      in_port_to_the_keys => in_port_to_the_keys,
      reset_n => reset_n
    );


