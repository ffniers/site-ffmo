GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-respondd \
	gluon-autorestart \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-source-filter \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-wifi-config \
	gluon-web-private-wifi \
	gluon-web-network \
	gluon-mesh-vpn-tunneldigger \
	gluon-tunneldigger-watchdog \
	gluon-radvd \
	gluon-setup-mode \
	ffac-status-page \
	gluon-ssid-changer \
	iwinfo \
	haveged

USB_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	kmod-usb-hid

USB_NIC := \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-rtl8150 \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-dm9601-ether

USB_WIFI := \
	kmod-rtl8192cu

ifeq ($(GLUON_TARGET),x86-generic)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		kmod-usb-ohci-pci \
		$(USB_NIC)
endif

ifeq ($(GLUON_TARGET),x86-64)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		$(USB_NIC) \
		kmod-igb #APU2
endif

ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		$(USB_NIC) \
		$(USB_WIFI)
endif

ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
	GLUON_SITE_PACKAGES += \
		$(USB_BASIC) \
		$(USB_NIC) \
		$(USB_WIFI)
endif

DEFAULT_GLUON_RELEASE := 0.9.1


GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= beta

GLUON_LANGS ?= en de

GLUON_ATH10K_MESH ?= ibss

GLUON_REGION := eu
