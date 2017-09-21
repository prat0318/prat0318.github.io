function FindProxyForURL(url, host) {
    PROXY = "SOCKS localhost:54311"

    if (shExpMatch(host,"10.129.*")) {
        return PROXY;
    }
    // Everything else directly!
    return "DIRECT";
}
