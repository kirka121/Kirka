import * as React from 'react'
import { Component } from 'react'
import { RouteComponentProps } from 'react-router-dom'
import { Jumbotron, Button, Row, Col } from 'reactstrap'
import ErrorMessage from './shared/ErrorMessage'
import NavBar from './navbar/NavBar'

class Home extends Component<{}, {}> {
  constructor(props) {
    super(props)
  }

  public render(): JSX.Element {
    return (
      <div className='main-body'>
        <NavBar />
        testing things
        <ErrorMessage message='Hello World'/>
      </div>
    )
  }
}

export default Home
