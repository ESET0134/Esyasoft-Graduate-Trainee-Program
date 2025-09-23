import React from 'react';
import { useTheme } from '../contexts/ThemeContext';

const ThemeButton = () => {
  const { theme, toggleTheme } = useTheme();

  const buttonStyle = {
    padding: '10px 20px',
    fontSize: '16px',
    cursor: 'pointer',
    borderRadius: '5px',
    border: `1px solid ${theme === 'light' ? '#000000' : '#ffffff'}`,
    backgroundColor: 'transparent',
    color: theme === 'light' ? '#000000' : '#ffffff',
    marginTop: '20px',
  };

  return (
    <button onClick={toggleTheme} style={buttonStyle}>
      Toggle to {theme === 'light' ? 'Dark' : 'Light'} Theme
    </button>
  );
};

export default ThemeButton;
