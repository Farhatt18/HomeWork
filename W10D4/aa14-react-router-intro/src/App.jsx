// src/App.jsx

import { createBrowserRouter, RouterProvider } from "react-router-dom";
import Home from "./components/Home";
import Stocks from "./components/Stocks";
import Movies from "./components/Movies";

// Define your routes
const routes = [
  { path: "/", element: <Home /> },
  { path: "/stocks", element: <Stocks /> },
  { path: "/movies", element: <Movies /> },
  { path: "*", element: <h1>Page Not Found</h1> },
  // Add more routes as needed
];
const router = createBrowserRouter(routes);

function App() {
  return (
    <div className="app">
      <h1>App Component</h1>
      <RouterProvider router={router} routes={routes} />
    </div>
  );
}

export default App;
