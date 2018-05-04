import React, { Component } from 'react';
import store from './redux/store.js'
import {Provider} from 'react-redux'
import './App.css';

import Menu from './components/menu'
import List from './components/list'
import ModalSearch from './components/searchModal'
import AddModal from './components/addModal'



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
				  <List/>
				  
				  <ModalSearch/>
				  <AddModal/>
		</div>


	</Provider>

    );
  }
}

export default App;
