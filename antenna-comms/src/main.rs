use vega_antenna::{send_burn_wire_command, get_telemetry_command};

fn main() {
    
    send_burn_wire_command().unwrap();

    let x = get_telemetry_command().unwrap();

    println!("Switches {:x?}", x);

}
