import React from "react";
import "./App.css";
import ApolloClient from "apollo-boost";
import { ApolloProvider } from "react-apollo";
import TrailsList from "./components/TrailsList";

const client = new ApolloClient({
  uri: "http://localhost:4000/api/graphiql"
});

function App() {
  return (
    <ApolloProvider client={client}>
      <div className="header">
        <h1>Perimeter</h1>
      </div>
      <div className="container">
        <TrailsList />
      </div>
    </ApolloProvider>
  );
}

export default App;
