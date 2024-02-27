#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: GNU Radio OpenLST
# Author: ryan
# GNU Radio version: 3.10.1.1

from gnuradio import blocks
import pmt
from gnuradio import digital
from gnuradio import filter
from gnuradio.filter import firdes
from gnuradio import gr
from gnuradio.fft import window
import sys
import signal
from argparse import ArgumentParser
from gnuradio.eng_arg import eng_float, intx
from gnuradio import eng_notation
from gnuradio import openlst




class gnuradio_openlst(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self, "GNU Radio OpenLST", catch_exceptions=True)

        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 2.048e6
        self.bit_rate = bit_rate = 7415.77
        self.samp_per_sym = samp_per_sym = samp_rate/bit_rate
        self.resamp_rate = resamp_rate = 4
        self.offset = offset = 1e5
        self.freq = freq = 437e6

        ##################################################
        # Blocks
        ##################################################
        self.openlst_raw_file_sink_0 = openlst.raw_file_sink('../output_file.bin')
        self.openlst_openlst_demod_0 = openlst.openlst_demod(preamble_bytes=4, preamble_quality=30, sync_byte1=0xD3, sync_byte0=0X91, sync_words=2, fec=True, flags_mask=0x80, flags=0, whitening=True)
        self.mmse_resampler_xx_0 = filter.mmse_resampler_cc(0, samp_per_sym/resamp_rate)
        self.low_pass_filter_0 = filter.fir_filter_ccf(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                50e3,
                1000,
                window.WIN_HAMMING,
                6.76))
        self.digital_symbol_sync_xx_0 = digital.symbol_sync_cc(
            digital.TED_MENGALI_AND_DANDREA_GMSK,
            resamp_rate,
            0.045,
            1.0,
            1.0,
            1.5,
            resamp_rate,
            digital.constellation_bpsk().base(),
            digital.IR_MMSE_8TAP,
            128,
            [])
        self.digital_gfsk_demod_0 = digital.gfsk_demod(
            samples_per_symbol=resamp_rate,
            sensitivity=1.0,
            gain_mu=0.175,
            mu=0.5,
            omega_relative_limit=0.005,
            freq_error=0.0,
            verbose=False,
            log=False)
        self.blocks_file_source_0 = blocks.file_source(gr.sizeof_gr_complex*1, '/home/ryan/Desktop/dora_heartbeat_jan.iq', False, 0, 0)
        self.blocks_file_source_0.set_begin_tag(pmt.PMT_NIL)


        ##################################################
        # Connections
        ##################################################
        self.msg_connect((self.openlst_openlst_demod_0, 'message'), (self.openlst_raw_file_sink_0, 'message'))
        self.connect((self.blocks_file_source_0, 0), (self.low_pass_filter_0, 0))
        self.connect((self.digital_gfsk_demod_0, 0), (self.openlst_openlst_demod_0, 0))
        self.connect((self.digital_symbol_sync_xx_0, 0), (self.digital_gfsk_demod_0, 0))
        self.connect((self.low_pass_filter_0, 0), (self.mmse_resampler_xx_0, 0))
        self.connect((self.mmse_resampler_xx_0, 0), (self.digital_symbol_sync_xx_0, 0))


    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.set_samp_per_sym(self.samp_rate/self.bit_rate)
        self.low_pass_filter_0.set_taps(firdes.low_pass(1, self.samp_rate, 50e3, 1000, window.WIN_HAMMING, 6.76))

    def get_bit_rate(self):
        return self.bit_rate

    def set_bit_rate(self, bit_rate):
        self.bit_rate = bit_rate
        self.set_samp_per_sym(self.samp_rate/self.bit_rate)

    def get_samp_per_sym(self):
        return self.samp_per_sym

    def set_samp_per_sym(self, samp_per_sym):
        self.samp_per_sym = samp_per_sym
        self.mmse_resampler_xx_0.set_resamp_ratio(self.samp_per_sym/self.resamp_rate)

    def get_resamp_rate(self):
        return self.resamp_rate

    def set_resamp_rate(self, resamp_rate):
        self.resamp_rate = resamp_rate
        self.mmse_resampler_xx_0.set_resamp_ratio(self.samp_per_sym/self.resamp_rate)

    def get_offset(self):
        return self.offset

    def set_offset(self, offset):
        self.offset = offset

    def get_freq(self):
        return self.freq

    def set_freq(self, freq):
        self.freq = freq




def main(top_block_cls=gnuradio_openlst, options=None):
    tb = top_block_cls()

    def sig_handler(sig=None, frame=None):
        tb.stop()
        tb.wait()

        sys.exit(0)

    signal.signal(signal.SIGINT, sig_handler)
    signal.signal(signal.SIGTERM, sig_handler)

    tb.start()

    try:
        input('Press Enter to quit: ')
    except EOFError:
        pass
    tb.stop()
    tb.wait()


if __name__ == '__main__':
    main()
