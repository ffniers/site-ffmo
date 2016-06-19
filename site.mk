GLUON_SITE_PACKAGES := \
        gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-announced \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-tunneldigger \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
        gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-luci-theme \
	gluon-luci-private-wifi \
	gluon-next-node \
	gluon-mesh-vpn-tunneldigger \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	gluon-migrate-vpn \
	gluon-ssid-changer \
	haveged \
	iptables \
	iwinfo

GLUON_LANGS = en de

DEFAULT_GLUON_RELEASE := 0.7.8

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
