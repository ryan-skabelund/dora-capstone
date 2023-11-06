use std::error::Error;

mod comms;
use comms::Comms;

const I2C_ADDRESS:u16 = 0x55;

pub fn get_telemetry_command() -> Result<[u8; 1], Box<dyn Error>> {
	let mut conn = Comms::new(I2C_ADDRESS, false)?;
	conn.comms_init()?;

	let command: u8 = 0x05;

	let mut data: [u8; 1] = [0; 1]; // I think it returns 4?
	conn.comms_block_rx(command, &mut data)?;

	Ok(data)
}

pub fn send_burn_wire_command() -> Result<(), Box<dyn Error>>{
	let mut conn = Comms::new(I2C_ADDRESS, false)?;
	conn.comms_init()?;

	let command: u8 = 0x02; // 0x01
	conn.send_command(command)?;

	Ok(())
}