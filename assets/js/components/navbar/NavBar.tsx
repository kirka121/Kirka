import * as React from 'react'
import { Component } from 'react'
import NavBarLineItem from './NavBarLineItem'

class NavBar extends Component<{}, {}> {
  constructor(props) {
    super(props)
  }

  public render(): JSX.Element {
    return (
      <div className='navbar-container'>
        <nav>
          <NavBarLineItem title='Home'/>
          <NavBarLineItem title='About'/>
          <NavBarLineItem title='Rant'/>
        </nav>
      </div>
    )
  }
}

export default NavBar
