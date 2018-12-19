import * as React from 'react'
import { Component } from 'react'

class NavBarLineItem extends Component<{title: string}, {}> {
  constructor(props) {
    super(props)
  }

  public render(): JSX.Element {
    return (
      <div className='navbar-line-item'>
        <a href=''>{ this.props.title }</a>
      </div>
    )
  }
}

export default NavBarLineItem
