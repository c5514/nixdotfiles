import { opt, mkOptions } from "lib/option";
import { distro } from "lib/variables";
import { icon } from "lib/utils";
import icons from "lib/icons";

const options = mkOptions(OPTIONS, {
  autotheme: opt(false),

  wallpaper: {
    resolution: opt<import("service/wallpaper").Resolution>(1920),
    market: opt<import("service/wallpaper").Market>("random"),
  },

  theme: {
    dark: {
      primary: {
        bg: opt("#51a4e7"),
        fg: opt("#141414"),
      },
      error: {
        bg: opt("#e55f86"),
        fg: opt("#141414"),
      },
      bg: opt("#171717"),
      fg: opt("#eeeeee"),
      widget: opt("#eeeeee"),
      border: opt("#eeeeee"),
    },
    light: {
      primary: {
        bg: opt("#426ede"),
        fg: opt("#eeeeee"),
      },
      error: {
        bg: opt("#b13558"),
        fg: opt("#eeeeee"),
      },
      bg: opt("#fffffa"),
      fg: opt("#080808"),
      widget: opt("#080808"),
      border: opt("#080808"),
    },

    blur: opt(0),
    scheme: opt<"dark" | "light">("dark"),
    widget: { opacity: opt(94) },
    border: {
      width: opt(4),
      opacity: opt(96),
    },

    shadows: opt(true),
    padding: opt(5),
    spacing: opt(6),
    radius: opt(11),
  },

  transition: opt(200),

  font: {
    size: opt(13),
    name: opt("JetBrains Mono"),
  },

  bar: {
    flatButtons: opt(true),
    position: opt<"top" | "bottom">("top"),
    corners: opt(50),
    transparent: opt(false),
    layout: {
      start: opt<Array<import("widget/bar/Bar").BarWidget>>([
        "launcher",
        "workspaces",
        "taskbar",
        "stats",
        "expander",
        "messages",
      ]),
      center: opt<Array<import("widget/bar/Bar").BarWidget>>(["date"]),
      end: opt<Array<import("widget/bar/Bar").BarWidget>>([
        "media",
        "expander",
        "systray",
        "colorpicker",
        "screenrecord",
        "hyprshade",

        "battery",
        "system",
        "powermenu",
      ]),
    },
    launcher: {
      icon: {
        colored: opt(true),
        icon: opt(icon(distro.logo, icons.ui.search)),
      },
      label: {
        colored: opt(false),
        label: opt(" Applications"),
      },
      action: opt(() => App.toggleWindow("launcher")),
    },
    date: {
      format: opt("%l:%M%P - %d/%m/%y"),
      action: opt(() => App.toggleWindow("datemenu")),
    },
    battery: {
      bar: opt<"hidden" | "regular" | "whole">("hidden"),
      charging: opt("#00D787"),
      percentage: opt(true),
      blocks: opt(7),
      width: opt(20),
      low: opt(30),
    },
    workspaces: {
      workspaces: opt(0),
    },
    taskbar: {
      iconSize: opt(24),
      monochrome: opt(false),
      exclusive: opt(true),
    },
    messages: {
      action: opt(() => App.toggleWindow("datemenu")),
    },
    systray: {
      ignore: opt(["KDE Connect Indicator", "spotify-client"]),
    },
    media: {
      monochrome: opt(true),
      preferred: opt("spotify"),
      direction: opt<"left" | "right">("right"),
      format: opt("{artists} - {title}"),
      length: opt(40),
    },
    powermenu: {
      monochrome: opt(true),
      action: opt(() => App.toggleWindow("powermenu")),
    },
  },

  launcher: {
    width: opt(0),
    margin: opt(80),
    nix: {
      pkgs: opt("nixpkgs/nixos-unstable"),
      max: opt(8),
    },
    sh: {
      max: opt(16),
    },
    cliphist: {
      max: opt(16),
    },
    apps: {
      iconSize: opt(62),
      max: opt(6),
      favorites: opt([
        [
          "firefox",
          "vesktop",
          "nautilus",
          "telegram-desktop",
          "spotify",
          "zotero",
        ],
      ]),
    },
  },

  overview: {
    scale: opt(10),
    workspaces: opt(0),
    monochromeIcon: opt(false),
  },

  powermenu: {
    sleep: opt("systemctl suspend"),
    reboot: opt("systemctl reboot"),
    // logout: opt("pkill Hyprland"),
    logout: opt("hyprctl dispatch exit"),
    shutdown: opt("shutdown now"),
    lock: opt("hyprlock"),
    hibernate: opt("systemctl hibernate"),
    layout: opt<"line" | "box">("line"),
    labels: opt(true),
  },

  quicksettings: {
    avatar: {
      image: opt(`/var/lib/AccountsService/icons/${Utils.USER}`),
      size: opt(70),
    },
    width: opt(380),
    position: opt<"left" | "center" | "right">("right"),
    networkSettings: opt("gtk-launch nm-connection-editor"),
    bluetoothSettings: opt("gtk-launch blueberry"),
    media: {
      monochromeIcon: opt(false),
      coverSize: opt(100),
    },
  },

  datemenu: {
    position: opt<"left" | "center" | "right">("center"),
    weather: {
      interval: opt(60_000),
      unit: opt<"metric" | "imperial" | "standard">("metric"),
      key: opt<string>(
        JSON.parse(Utils.readFile(`${App.configDir}/.weather`) || "{}")?.key ||
          "",
      ),
      cities: opt<Array<number>>(
        JSON.parse(Utils.readFile(`${App.configDir}/.weather`) || "{}")
          ?.cities || [],
      ),
    },
  },

  hyprshade: {
    interval: opt(10_000),
  },

  osd: {
    progress: {
      vertical: opt(true),
      pack: {
        h: opt<"start" | "center" | "end">("end"),
        v: opt<"start" | "center" | "end">("center"),
      },
    },
    microphone: {
      pack: {
        h: opt<"start" | "center" | "end">("center"),
        v: opt<"start" | "center" | "end">("end"),
      },
    },
  },

  notifications: {
    position: opt<Array<"top" | "bottom" | "left" | "right">>(["top", "right"]),
    blacklist: opt(["Spotify"]),
    width: opt(440),
  },

  hyprland: {
    gaps: opt(1.0),
    inactiveBorder: opt("#595959"),
    gapsWhenOnly: opt(true),
  },
});

globalThis["options"] = options;
export default options;
