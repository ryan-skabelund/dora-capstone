extern crate i2c_linux;
use i2c_linux::{I2c, Message, WriteFlags, ReadFlags};

use std::{
	fs::File,
	io
};

pub struct Comms {
	i2c: I2c<File>,
	addr: u16,
	tenbit: bool
}

impl Comms {
	pub fn new(addr: u16, tenbit: bool) -> io::Result<Self> {
		let comms = Comms{
			i2c: I2c::from_path("/dev/i2c-1")?,
			addr: addr,
			tenbit: tenbit
		};
		Ok(comms)
	}

	pub fn comms_init(&mut self) -> io::Result<()> {
		self.i2c.smbus_set_slave_address(self.addr, self.tenbit)?;
		Ok(())
	}

	pub fn send_command(&mut self, command: u8) -> io::Result<()> {

		let mut msgs = [
			Message::Write {
				address: self.addr,
				data: &mut vec![command],
				flags: WriteFlags::default(),
			},
		];

		self.i2c.i2c_transfer(&mut msgs)
			.map(|_| msgs[0].len())?;
		
		Ok(())
	}

	/// Returns data in output_data_buf
    /// read_delay is in milliseconds
    pub fn comms_block_rx(&mut self, command: u8, output_data_buf: &mut [u8])-> io::Result<usize> {

        let _res = self.i2c.i2c_write_block_data(command, &[])?;

        let mut msgs = [
            Message::Read {
                address: self.addr,
                data: output_data_buf,  // put read in this buffer
                flags: ReadFlags::default(),
            },
        ];

        // can we use i2c_read_block_data? I think it will send "|addr|register|" which we only have addr for EPS

        // @TODO this will error if msgs is not large enough

        return self.i2c.i2c_transfer(&mut msgs)
            .map(|_| msgs[0].len()); // returns Ok(msgs[0].len) if Ok, otherwise return the io::Error

    }
}