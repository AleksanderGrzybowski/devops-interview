import React, { Component } from 'react';
import axios from 'axios';

class App extends Component {
    
    constructor(props) {
        super(props);

        this.state = {
            response: 'Waiting for response...'
        };
    }

    componentDidMount() {
        setInterval(() => {
            axios.get(window.backendUrl)
              .then(({data}) => this.setState({response: JSON.stringify(data)}))
              .catch(err => this.setState({response: 'error'}));
        }, 2000);
    }

    render() {
        return (
          <div>
              <pre>{this.state.response}</pre>
          </div>
        );
    }
}

export default App;
