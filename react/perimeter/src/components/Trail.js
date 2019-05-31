import React from "react";
import Trailheads from "./Trailheads";

const Trail = ({ trail }) => {
  const { name, footTravelOnly, length, trailheads } = trail;
  return (
    <div>
      <h3>{name}</h3>
      <ul>
        {footTravelOnly && (
          <li>
            <b>Foot travel only</b>
          </li>
        )}
        <li>Length: {length} miles</li>
        {trailheads.length > 0 && <Trailheads trailheads={trailheads} />}
      </ul>
    </div>
  );
};

export default Trail;
