import React from 'react'
import { Link } from 'react-router-dom'

export default function NavBar() {
  return (
    <div>
      Navbar &nbsp; &rarr;
      <Link to='/'>home</Link>&nbsp;
      <Link to='/about'>about</Link>&nbsp;
      <Link to='/api'>api</Link>&nbsp;
    </div>
  )
}
