import * as React from 'react'
import { RouteComponentProps } from 'react-router-dom'
import { Jumbotron, Button, Row, Col } from 'reactstrap'

//                                         <{PROPS_HERE}, {STATE_HERE}>
class ErrorMessage extends React.Component <{ message: string }, {}> {
  constructor(props) {
    super(props)
  }

  public render(): JSX.Element {
    return (
      <div className='error-message'>
        { this.props.message }
      </div>
    )
  }
}


export default ErrorMessage
