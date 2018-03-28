#!/bin/sh
# Copyright (C) 2010-2013 OpenWrt.org

. /lib/functions/leds.sh
. /lib/ramips.sh

get_status_led() {
	board=$(ramips_board_name)

	case $board in
	3g150b|\
	3g300m|\
	w150m)
		status_led="$board:blue:ap"
		;;
	3g-6200n|\
	ar670w|\
	ar725w|\
	asl26555|\
	br-6425|\
	br-6475nd|\
	c50|\
	dch-m225|\
	dir-860l-b1|\
	e1700|\
	fonera20n|\
	firewrt|\
	hg255d|\
	kn_rc|\
	kn_rf|\
	kng_rc|\
	mzk-750dhp|\
	mzk-dp150n|\
	mzk-w300nh2|\
	nbg-419n|\
	nbg-419n2|\
	pwh2004|\
	vr500|\
	wnce2001|\
	wndr3700v5|\
	x5|\
	x8|\
	xdxrn502j)
		status_led="$board:green:power"
		;;
	3g-6200nl)
		status_led="$board:green:internet"
		;;
	a5-v11|\
	cs-qr10|\
	d105|\
	dcs-930l-b1|\
	ex2700|\
	hlk-rm04|\
	jhr-n825r|\
	mpr-a1|\
	mpr-a2|\
	mzk-ex750np|\
	wn3000rpv3)
		status_led="$board:red:power"
		;;
	ac1200pro|\
	all0239-3g|\
	dcs-930|\
	dir-300-b1|\
	dir-300-b7|\
	dir-320-b1|\
	dir-600-b1|\
	dir-610-a1|\
	dir-615-d|\
	dir-615-h1|\
	dir-620-a1|\
	dir-620-d1|\
	dwr-512-b|\
	hpm|\
	hw550-3g|\
	mac1200rv2|\
	miniembwifi|\
	mofi3500-3gn|\
	rut5xx|\
	v11st-fe|\
	vocore|\
	wmr-300|\
	zbt-wg2626|\
	zbt-wg3526)
		status_led="$board:green:status"
		;;
	ai-br100|\
	ht-tm02)
		status_led="$board:blue:wlan"
		;;
	atp-52b|\
	ip2202)
		status_led="$board:green:run"
		;;
	awapn2403|\
	dir-645|\
	sk-wb8|\
	wrh-300cr)
		status_led="$board:green:wps"
		;;
	cf-wr800n|\
	psg1208)
		status_led="$board:white:wps"
		;;
	psg1218)
		status_led="$board:yellow:status"
		;;
	cy-swr1100|\
	w502u)
		status_led="$board:blue:wps"
		;;
	d240|\
	dap-1350|\
	na930|\
	pbr-m1|\
	rt-n13u|\
	rt-n14u|\
	rt-n15|\
	rt-n56u|\
	wl-330n|\
	wl-330n3g|\
	wli-tx4-ag300n|\
	wt3020|\
	y1|\
	y1s|\
	youku-yk1)
		status_led="$board:blue:power"
		;;
	db-wrt01|\
	esr-9753|\
	pbr-d1)
		status_led="$board:orange:power"
		;;
	f5d8235-v1)
		status_led="$board:blue:wired"
		;;
	f5d8235-v2)
		status_led="$board:blue:router"
		;;
	f7c027|\
	timecloud)
		status_led="$board:orange:status"
		;;
	hc5*61|\
	jhr-n805r|\
	jhr-n926r|\
	mlw221|\
	mlwg2)
		status_led="$board:blue:system"
		;;
	linkits7688| \
	linkits7688d)
		[ "$1" = "upgrade" ] && status_led="mediatek:orange:wifi"
		;;
	m2m)
		status_led="$board:blue:wifi"
		;;
	m3|\
	m4|\
	miwifi-nano)
		status_led="$board:blue:status"
		;;
	miwifi-mini|\
	zte-q7)
		status_led="$board:red:status"
		;;
	mr-102n)
		status_led="$board:amber:status"
		;;
	mr200)
		status_led="$board:white:power"
		;;
	nw718)
		status_led="$board:amber:cpu"
		;;
	newifi-d1)
		status_led="$board:blue:status"
		;;
	omega2| \
	omega2p)
		status_led="$board:amber:system"
		;;
	oy-0001|\
	sl-r7205|\
	zbt-we826)
		status_led="$board:green:wifi"
		;;
	psr-680w)
		status_led="$board:red:wan"
		;;
	px-4885|\
	re6500|\
	whr-1166d|\
	whr-600d)
		status_led="$board:orange:wifi"
		;;
	mzk-ex300np|\
	rt-n10-plus|\
	tew-691gr|\
	tew-692gr|\
	ur-326n4g|\
	ur-336un|\
	wf-2881|\
	wr512-3gn)
		status_led="$board:green:wps"
		;;
	rb750gr3)
		status_led="$board:blue:pwr"
		;;
	sap-g3200u3)
		status_led="$board:green:usb"
		;;
	v22rw-2x2)
		status_led="$board:green:security"
		;;
	vocore2)
		status_led="$board:fuchsia:status"
		;;
	w306r-v20|\
	witi|\
	zbt-wr8305rt)
		status_led="$board:green:sys"
		;;
	wcr-150gn|\
	wl-351)
		status_led="$board:amber:power"
		;;
	whr-g300n|\
	wlr-6000)
		status_led="$board:red:power"
		;;
	widora-neo)
		status_led="widora:orange:wifi"
		;;
	wzr-agl300nh)
		status_led="$board:green:router"
		;;
	wizfi630a)
		status_led="$board::run"
		;;
	whr-300hp2|\
	wsr-1166|\
	wsr-600)
		status_led="$board:green:power"
		;;
	wrtnode2r | \
	wrtnode2p | \
	wrtnode)
		status_led="wrtnode:blue:indicator"
		;;
	zbt-cpe102)
		status_led="$board:green:4g-0"
		;;
	ydh_64MByte|\
	ydh_128MByte|\
	ydh_256MByte)
		status_led="ydh:green:power"
		;;	
	esac
}

set_state() {
	get_status_led $1

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;
	failsafe)
		status_led_blink_failsafe
		;;
	upgrade | \
	preinit_regular)
		status_led_blink_preinit_regular
		;;
	done)
		status_led_on
		;;
	esac
}
