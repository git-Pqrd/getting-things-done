import React, { Component } from 'react';
import Menu from './components/menu'
import store from './redux/store.js'
import {Provider} from 'react-redux'
import './App.css';




class App extends Component {
  render() {
	  return (
		  <Provider store={store}>


		<div className="App">
			<Menu/>
		</div>


	</Provider>

    );
  }
}

export default App;
