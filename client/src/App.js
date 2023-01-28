import './App.css';
import { useEffect } from "react";

function App() {
  useEffect(() => {
    fetch("/sitters")
      .then((r) => r.json())
      .then((sitters) => console.log(sitters));
  }, []);

  return <h1>Hello from Sitter Rating!</h1>;
}

export default App;
