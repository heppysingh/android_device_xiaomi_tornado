#!/system/bin/sh

# Core binary paths
DROIDSPACES_BINARY_PATH=/system/bin/droidspaces
RECOVERY_CONSOLE_PATH=/system/bin/recovery-console

# Container properties
CONTAINER_NAME="Alpine-mini"
CONTAINER_HOSTNAME=alpine
DS_FLAGS="--hw-access --privileged=full -B /tmp:/recovery --foreground"

# Rootfs path. Accepts only .img files or raw
# block devices like /dev/block/* (SD cards, partitions).
# If you want to use a directory-based rootfs, simply change
# -i ${ROOTFS_PATH} to -r ${ROOTFS_PATH} in the main command.
ROOTFS_PATH=/tmp/alpine

if [ ! -f "${ROOTFS_PATH}/bin/sh" ]; then
    echo "Extracting Alpine rootfs to ${ROOTFS_PATH}..."
    mkdir -p "${ROOTFS_PATH}"
    tar -xJf /alpine.tar.xz -C "${ROOTFS_PATH}"
fi

# Main execution
exec ${RECOVERY_CONSOLE_PATH} \
    --exec "${DROIDSPACES_BINARY_PATH} -i ${ROOTFS_PATH} -n \"${CONTAINER_NAME}\" -h \"${CONTAINER_HOSTNAME}\" ${DS_FLAGS} start"
