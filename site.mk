GLUON_SITE_PACKAGES := \
    gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-neighbour-info \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-tunneldigger \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-theme \
	gluon-luci-admin \
	gluon-luci-autoupdater \
    gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-luci-private-wifi \
	gluon-next-node \
	gluon-mesh-vpn-tunneldigger \
	gluon-radvd \
	gluon-setup-mode \
	gluon-ssid-changer \
	gluon-migrate-vpn \
	gluon-tunneldigger-watchdog \
	ffho-ath9k-blackout-workaround \
	gluon-ebtables-filter-roguenets \
	ffac-status-page-api \
	gluon-status-page \
	haveged \
	iptables \
	iwinfo

GLUON_REGION ?= eu

GLUON_LANGS ?= en de

#DEFAULT_GLUON_RELEASE := 0.7-$(GLUON_BRANCH)-$(shell date '+%Y%m%d')
DEFAULT_GLUON_RELEASE := 0.8.4

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_ATH10K_MESH ?= ibss
