import React from "react";

const Trail = ({ trail }) => (
  <div>
    <h3>{trail.name}</h3>
    <ul>
      <li>Length: {trail.length} miles</li>
      <li>Foot travel only? {trail.footTravelOnly ? "Yes" : "No"}</li>
    </ul>
  </div>
);

export default Trail;
