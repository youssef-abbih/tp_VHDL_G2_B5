  --Example instantiation for system 'my_sopc'
  my_sopc_inst : my_sopc
    port map(
      out_port_from_the_led => out_port_from_the_led,
      clk_0 => clk_0,
      in_port_to_the_key => in_port_to_the_key,
      reset_n => reset_n
    );


