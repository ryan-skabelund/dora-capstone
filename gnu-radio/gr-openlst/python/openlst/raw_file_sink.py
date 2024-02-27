#!/usr/bin/env python
# -*- coding: utf-8 -*-

import pmt
from gnuradio import gr
# from gnuradio import blocks

class raw_file_sink(gr.basic_block):
	"""
	File Sink

	This block writes incoming messages to a file as bytes.

	"""
	def __init__(self, file_path="output_file.txt"):
		gr.basic_block.__init__(
			self,
			name='Raw File Sink',
			in_sig=None,
			out_sig=None,
		)
		self.message_port_register_in(pmt.intern('message'))
		self.set_msg_handler(pmt.intern('message'), self.handle_msg)
		self.file_path = file_path
		# self.file_sink = blocks.file_sink(gr.sizeof_gr_complex, self.file_path)

	def handle_msg(self, msg):
		raw = bytes(pmt.u8vector_elements(msg))
		# self.file_sink.consume(raw)
		try:
			with open(self.file_path, 'ab') as file:
				file.write(raw)
		except Exception as e:
			print(f"Error writing to file: {e}")
