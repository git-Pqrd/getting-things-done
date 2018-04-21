import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './MenuToggler.css';

class MenuToggler extends Component {
	constructor () {
		super();
		this.state = {
			menuOpen : true
		}
	}
	
	toggleMenu () {
		this.setState ({
			menuOpen : !this.state.menuOpen
		
		})
		console.log(this.state.menuOpen);
	}
	render() {
		return (
			<div
				className={styles.container}
				onClick={this.toggleMenu.bind(this)}
			>
				toggleMenu

			</div>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(MenuToggler);
