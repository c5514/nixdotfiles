{
  xdg.configFile = {
    "waybar/config".source = ./config;
    "waybar/modules.json".source = ./modules.json;
  };
  programs.waybar = {
    enable = true;
    style = ''
      @define-color black #000000;
      @define-color white #FFFFFF;
      @define-color darkgray #222222;
      @define-color gray #ffaa00;
      @define-color gray #888888;
      @define-color green #00D787;
      @define-color blue #51a4e7;
      @define-color red #e55f86;

      * {
          font-family: "JetBrains Mono";
          border: none;
          border-radius: 0px;
      }

      window#waybar {
          background-color: rgba(0,0,0,0.8);
          border-bottom: 0px solid @white;
          /* color: #FFFFFF; */
          background: transparent;
          transition-property: background-color;
          transition-duration: .5s;
      }

      /* -----------------------------------------------------
       * Workspaces 
       * ----------------------------------------------------- */

      #workspaces {
          background: @black;
          margin: 2px 1px 3px 1px;
          padding: 0px 1px;
          border-radius: 15px;
          border: 0px;
          font-weight: bold;
          font-style: normal;
          opacity: 0.8;
          font-size: 16px;
          color: @white;
      }

      #workspaces button {
          padding: 0px 5px;
          margin: 4px 3px;
          border-radius: 15px;
          border: 0px;
          color: @white;
          background-color: @darkgray;
          transition: all 0.3s ease-in-out;
          opacity: 0.4;
      }

      #workspaces button.active {
          color: @white;
          background: @darkgray;
          border-radius: 15px;
          min-width: 40px;
          transition: all 0.3s ease-in-out;
          opacity:1.0;
      }

      #workspaces button:hover {
          color: @white;
          background: @darkgray;
          border-radius: 15px;
          opacity:0.7;
      }

      tooltip {
          border-radius: 10px;
          background-color: @black;
          opacity:0.8;
          padding:20px;
          margin:0px;
      }

      tooltip label {
          color: @white;
      }

      /* -----------------------------------------------------
       * Window
       * ----------------------------------------------------- */

      #window {
          background: @black;
          margin: 5px 15px 5px 0px;
          padding: 2px 10px 0px 10px;
          border-radius: 12px;
          color:@white;
          font-size:16px;
          font-weight:normal;
          opacity:0.8;
      }

      window#waybar.empty #window {
          background-color:transparent;
      }

      /* -----------------------------------------------------
       * Taskbar
       * ----------------------------------------------------- */

      #taskbar {
          background: @black;
          margin: 3px 15px 3px 0px;
          padding:0px;
          border-radius: 15px;
          font-weight: normal;
          font-style: normal;
          opacity:0.8;
          border: 3px solid @black;
      }

      #taskbar button {
          margin:0;
          border-radius: 15px;
          padding: 0px 5px 0px 5px;
      }

      #taskbar.empty {
          background:transparent;
          border:0;
          padding:0;
          margin:0;
      }

      /* -----------------------------------------------------
       * Modules
       * ----------------------------------------------------- */

      .modules-left > widget:first-child > #workspaces {
          margin-left: 0;
      }

      .modules-right > widget:last-child > #workspaces {
          margin-right: 0;
      }

      /* -----------------------------------------------------
       * Custom Quicklinks
       * ----------------------------------------------------- */

      #custom-brave, 
      #custom-browser, 
      #custom-keybindings, 
      #custom-outlook, 
      #custom-filemanager, 
      #custom-teams, 
      #custom-github,
      #custom-whatsapp,
      #custom-calculator, 
      #custom-windowsvm, 
      #custom-cliphist, 
      #custom-settings, 
      #custom-wallpaper, 
      #custom-system,
      #custom-hyprshade,
      #custom-hypridle,
      #custom-tools,


      #custom-tools {
          margin-right:12px;
      }


      /* -----------------------------------------------------
       * Custom Modules
       * ----------------------------------------------------- */

      #custom-appmenu {
          background-color: @black;
          font-size: 16px;
          color: @blue;
          border-radius: 15px;
          padding: 0px 10px 0px 10px;
          margin: 3px 17px 3px 14px;
          opacity:0.8;
          border:3px solid @black;
      }

      /* -----------------------------------------------------
       * Custom Exit
       * ----------------------------------------------------- */

      #custom-exit {
          background-color: @black;
          border-radius: 17px;
          margin: 3px 5px 3px 5px;
          padding: 0px 13px 0px 10px;
          font-size:16px;
          color: @red;
          opacity: 0.8;
      }

      /* -----------------------------------------------------
       * Hardware Group
       * ----------------------------------------------------- */

      #disk,#memory,#cpu,#language,#temperature {
          margin:0px;
          padding:0px;
          font-size:16px;
          color:@white;
      }

      #language {
          margin-right:10px;
      }

      /* -----------------------------------------------------
       * Clock
       * ----------------------------------------------------- */

      #clock {
          background-color: @black;
          font-size: 16px;
          color: @white;
          border-radius: 15px;
          padding: 1px 10px 0px 10px;
          margin: 3px 15px 3px 0px;
          opacity:0.8;
          border:3px solid @black;   
      }
      #music {
        background-color: @black;
        font-size: 16px;
        color: @white;
        border-radius: 15px;
        padding: 1px 10px 0px 10px;
        margin: 3px 15px 3px 0px;
        opacity:0.8;
        border:3px solid @black; 
      }
      /* -----------------------------------------------------
       * Backlight
       * ----------------------------------------------------- */

      #backlight {
          background-color: @black;
          font-size: 16px;
          color: @white;
          border-radius: 15px;
          padding: 2px 10px 0px 10px;
          margin: 5px 15px 5px 0px;
          opacity:0.8;
      }

      /* -----------------------------------------------------
       * Pulseaudio
       * ----------------------------------------------------- */

      #pulseaudio {
          background-color: @black;
          font-size: 16px;
          color: @white;
          border-radius: 15px;
          padding: 2px 10px 0px 10px;
          margin: 5px 15px 5px 0px;
          opacity:0.8;
      }

      #pulseaudio.muted {
          background-color: @black;
          color: @white;
      }

      /* -----------------------------------------------------
       * Network
       * ----------------------------------------------------- */

      #network {
          background-color: @black;
          font-size: 16px;
          color: @white;
          border-radius: 15px;
          padding: 2px 10px 0px 10px;
          margin: 3px 10px 3px 5px;
          opacity:0.8;
      }

      #network.ethernet {
          background-color: @black;
          color: @white;
      }

      #network.wifi {
          background-color: @black;
          color: @white;
      }

      /* -----------------------------------------------------
       * Bluetooth
       * ----------------------------------------------------- */

      #bluetooth.on, #bluetooth.connected {
          background-color: @black;
          font-size: 16px;
          color: @blue;
          border-radius: 15px;
          padding: 2px 0px 0px 0px;
          margin: 5px 10px 5px 0px;
          opacity:0.8;
      }

      #bluetooth,#bluetooth.off {
          background-color: @black;
      	color: @gray;
          border-radius: 15px;
      	padding: 2px 10px 0px 10px;
          margin: 5px 15px 5px 0px;
          opacity:0.8;
      }

      /* -----------------------------------------------------
       * Battery
       * ----------------------------------------------------- */

      #battery {
          background-color: @black;
          font-size: 16px;
          color: @white;
          border-radius: 15px;
          padding: 2px 15px 0px 10px;
          margin: 5px 5px 5px 0px;
          opacity:0.8;
      }

      #battery.charging, #battery.plugged {
          color: @green;
          background-color: @black;
      }

      @keyframes blink {
          to {
              background-color: @black;
              color: @white;
          }
      }

      #battery.critical:not(.charging) {
          background-color: #f53c3c;
          color: @black;
          animation-name: blink;
          animation-duration: 0.5s;
          animation-timing-function: linear;
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }

      /* -----------------------------------------------------
       * Tray
       * ----------------------------------------------------- */

      #tray {
          padding: 0px 15px 0px 0px;
      }

      #tray > .passive {
          -gtk-icon-effect: dim;
      }

      #tray > .needs-attention {
          -gtk-icon-effect: highlight;
      }
      	'';
  };
}
