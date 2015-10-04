var FindProxyForURL = function(init, profiles) {
    return function(url, host) {
        "use strict";
        var result = init, scheme = url.substr(0, url.indexOf(":"));
        do {
            result = profiles[result];
            if (typeof result === "function") result = result(url, host, scheme);
        } while (typeof result !== "string" || result.charCodeAt(0) === 43);
        return result;
    };
}("+hehe", {
    "+hehe": function(url, host, scheme) {
        "use strict";
        if (/(?:^|\.)google-analytics\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)facebook\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)tubemogul\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)googlevideo\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)twitter\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)doubleclick\.net$/.test(host)) return "+http home";
        if (/(?:^|\.)fbcdn\.net$/.test(host)) return "+http home";
        if (/(?:^|\.)cdninstagram\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)akamaihd\.net$/.test(host)) return "+http home";
        if (/(?:^|\.)facebook\.net$/.test(host)) return "+http home";
        if (/(?:^|\.)instagram\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)blogblog\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)blogger\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)blogspot\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)btdigg\.org$/.test(host)) return "+http home";
        if (/^68\.168\.16\.151$/.test(host)) return "+http home";
        if (/(?:^|\.)cool18\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)youtube-nocookie\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)gstatic\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)ggpht\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)ytimg\.com$/.test(host)) return "+http home";
        if (/(?:^|\.)youtube\.com$/.test(host)) return "+http home";
        if (/google/.test(host)) return "+http home";
        return "DIRECT";
    },
    "+http home": function(url, host, scheme) {
        "use strict";
        if (host === "[::1]" || host === "localhost" || host === "127.0.0.1") return "DIRECT";
        return "PROXY 192.168.1.151:8118";
    }
});
