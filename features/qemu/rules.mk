MODULES_TRY_ADD += \
	8139cp ahci ata_generic ata_piix cdrom e100 e1000 \
	ne2k_pci pata_acpi pcnet32 sr_mod \
	virtio.*

$(call require,depmod-image)
