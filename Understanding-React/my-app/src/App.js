import { useState } from "react";

function App(props) {

  const [count, setCount] = useState(0);
  const increment=()=>{
    console.log("Increment Clicked");
    setCount(count+1);
  }
  const decrement=()=>{
    console.log("Decrement Clicked");
    setCount(count-1);
  }
  return (
   <div>
    <h1>Count: {count}</h1>
    <button onClick={increment}>Increment</button>
    <button onClick={decrement}>decrement</button>
   </div>
  );
}

export default App;
