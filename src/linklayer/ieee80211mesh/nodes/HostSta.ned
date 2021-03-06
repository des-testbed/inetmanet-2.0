//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//

package inet.linklayer.ieee80211mesh.nodes;

import inet.networklayer.IManetRouting;
import inet.nodes.inet.WirelessHost;
import inet.networklayer.autorouting.ipv4.HostAutoConfigurator2;


//
// A wireless host containing routing, mobility and battery components.
// Supports only IPv4 protocol, TCP and UDP as transport protocol.
// This is a typical mobile node which can participate in adhoc routing
// and may have TCP/UDP applications installed. Supports ICMP (ping) too.
//
// - By default contains a single wireless cards, however it can be configured
//   by the numRadios parameter. Wirless card type is configured by the
//   **.wlan.typename parameter. see:  inet.linklayer.ieee80211 or other 
//   modules implementing ~IWirelessNic
// - Node mobility can be set using **.mobility.typename
//   see: inet.mobility and ~IMobility
//
module HostSta extends WirelessHost
{
    parameters:
        @display("i=device/cellphone");
        wlan[*].typename = "Ieee80211Nic";
        IPForward = default(true);
    submodules:
        autoconfigurator: HostAutoConfigurator2 {
            @display("p=53,71");
        }
}
