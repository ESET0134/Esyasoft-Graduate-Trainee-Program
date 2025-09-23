import React from 'react';
import { useTheme } from './contexts/ThemeContext';
import ThemeButton from './components/ThemeButton';

function App() {
  const { theme } = useTheme();

  const appStyle = {
    backgroundColor: theme === 'light' ? '#ffffff' : '#000000',
    color: theme === 'light' ? '#000000' : '#ffffff',
    height: '100vh',
    display: 'flex',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    textAlign: 'center',
    transition: 'background-color 0.3s ease, color 0.3s ease',
    fontFamily: 'sans-serif',
  };

  return (
    <div style={appStyle}>
      <h1>Hello Shruti!</h1>
      <ThemeButton />
    </div>
  );
}

export default App;
