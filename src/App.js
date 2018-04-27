import React, { Component } from 'react';
import Menu from './components/menu'
import store from './redux/store.js'
import {Provider} from 'react-redux'
import './App.css';


let primaryStyleContainer = {
	color : '#D7DDFF',
	fontFamily : 'Raleway, sans-serif',
	backgroundColor : '#003980'
}

let secondaryStyleContainer = {
	color : '#D7DDFF',
	fontFamily : 'Raleway, sans-serif',
	backgroundColor : 'grey'
}



class App extends Component {
  render() {
	  return (
		  <Provider store={store}>


			  <div
				  style={primaryStyleContainer}
				  className="App">
			<Menu/>
		</div>


	</Provider>

    );
  }
}

export default App;
