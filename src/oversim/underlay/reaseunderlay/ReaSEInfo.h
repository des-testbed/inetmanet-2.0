//
// Copyright (C) 2010 Institut fuer Telematik, Karlsruher Institut fuer Technologie (KIT)
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

/**
 * @file ReaSEInfo.h
 * @author Helge Backhaus, Bernhard Mueller
 */

#ifndef __IPV4INFO_H__
#define __IPV4INFO_H__

#include <omnetpp.h>
#include <PeerInfo.h>


class ReaSEInfo : public PeerInfo
{
public:
    /**
     * constructor
     */
    ReaSEInfo(uint32_t type, int moduleId, cObject** context);

    /**
     * setter and getter
     */
    void setNodeID(int nodeID) { this->nodeID = nodeID; };
    int getNodeID() { return nodeID; };

protected:
    void dummy(); /**< dummy-function to make ReaSEInfo polymorphic */

    int nodeID;
};

#endif