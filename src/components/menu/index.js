import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './menuIndex.css';
import FilterCloud from './FilterCloud.js'
import ModalToggler from './ModalToggler.js'
import MenuToggler from './MenuToggler.js'




class menuIndex extends Component {
	constructor() {
		super();
		this.state = {
			menuOpen : true
		}
	}


	render() {
		return (
			<div 
				className={[
					styles.container, 
					this.state.menuOpen ? styles.open : styles.close 
				].join(' ')}>
				<FilterCloud/>
				<ModalToggler/>
				<MenuToggler/>
			</div>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(menuIndex);
