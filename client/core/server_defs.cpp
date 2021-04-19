#include "server_defs.h"

QString amnezia::server::getContainerName(amnezia::DockerContainer container)
{
    switch (container) {
    case(DockerContainer::OpenVpn): return "amnezia-openvpn";
    case(DockerContainer::OpenVpnOverCloak): return "amnezia-openvpn-cloak";
    case(DockerContainer::ShadowSocksOverOpenVpn): return "amnezia-shadowsocks";
    default: return "";
    }
}

QString amnezia::server::getDockerfileFolder(amnezia::DockerContainer container)
{
    return "/opt/amnezia/" + getContainerName(container);
}
