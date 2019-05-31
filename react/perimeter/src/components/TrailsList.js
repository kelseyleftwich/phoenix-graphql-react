import React from "react";
import { Query } from "react-apollo";
import gql from "graphql-tag";
import Trail from "./Trail";

const TrailsList = () => (
  <Query
    query={gql`
      {
        trails {
          name
          length
          footTravelOnly
          trailheads {
            name
          }
        }
      }
    `}
  >
    {({ loading, error, data }) => {
      if (loading) return <p>Good things take time....</p>;
      if (error) return <p>Something went wrong...</p>;

      return (
        <div className="row">
          {data.trails.map(trail => (
            <Trail key={trail.name} trail={trail} />
          ))}
        </div>
      );
    }}
  </Query>
);

export default TrailsList;
