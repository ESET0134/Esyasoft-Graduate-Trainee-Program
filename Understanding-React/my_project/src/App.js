import { useState } from 'react';
import EventComponent from './components/EventComponent';
import LoginComponent from './components/LoginComponent';
import LoginFormComponent from './components/LoginFormComponent';

function App() {
  const [counter, setCounter] = useState(0);
  const incrementButtonHandler = () => {
    setCounter(counter+1)
  }
  const decrementButtonHandler = () => {
    setCounter(counter-1)
  }
  return (
    <div>
      <div>
        {counter}
      </div>
      <button onClick={incrementButtonHandler}>
        Increment
      </button>
      <button onClick={decrementButtonHandler}>
        Decrement
      </button>
      <EventComponent />
      <LoginComponent />
      <LoginFormComponent />
    </div>
  )
}

export default App;
