## Real time clock

According to the MBM2 datasheet, the RTC should be an i2c device: M41T81S, but I can’t find the address in the datasheets.
On the flatsat MBM2, I don’t see it:

![Alt text](1.PNG)

Which compared to a BBB not on the MBM2, it has the same result (note that 57 is the ADCS)
BBB not on the MBM2:

![Alt text](2.PNG)

Puting the RTC on hold and going back to setting time. This command works:
date -s '2014-12-25 12:34:56'

![Alt text](3.PNG)

There's the RTC:

![Alt text](4.PNG)

dmesg:

![Alt text](5.PNG)

![Alt text](6.PNG)

Can’t read the i2c:

![Alt text](7.PNG)

Verifying that the RTC drivers installed does in fact support the M41T81S module:

<img src="8.JPEG" width=600>