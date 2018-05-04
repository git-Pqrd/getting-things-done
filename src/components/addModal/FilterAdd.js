import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './FilterAdd.css';

class FilterAdd extends Component {
	constructor() {
		super()
		this.state = {

			open : false
		}
	}
	
	test() {
		this.setState({
			open : !this.state.open
		})
	}
	
	render() {
		return (
		
		<div 
			onClick={this.test.bind(this)}
			className={[styles.component, 
			this.state.open ? styles.open : styles.close
			].join(' ')}>

		<h1> Add A Filter</h1>
		<input 
				onChange={this.handleChange}
				placeholder="add a Filter"
			/>
		</div>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(FilterAdd);
