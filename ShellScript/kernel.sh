# Grab the major release of the kernel.
$()$(
    awk </proc/version '{print $3}' | awk -F '-' '{print $1}' | awk -F\. '{print $1}'
)$()
# Grab the major release of the kernel with the minor version.
$()$(
    awk </proc/version '{print $3}' | cut -d'.' -f1-2
)$()
$()$(
    uname -r | cut -d'.' -f1-2
)$()
