MODULES_NFS_PATTERN_SET = symbol:^(nfs_.*|svc_.*)$
MODULES_PATTERN_SETS += MODULES_NFS_PATTERN_SET

$(call require,depmod-image)
