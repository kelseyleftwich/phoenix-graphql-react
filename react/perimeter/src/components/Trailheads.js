import React from "react";

const Trailheads = ({ trailheads }) => (
  <>
    <li>Trailheads: </li>
    <ul>
      {trailheads.map((trailhead, index) => (
        <li key={index}>{trailhead.name}</li>
      ))}
    </ul>
  </>
);

export default Trailheads;
