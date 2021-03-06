import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './StepAdd.css';

class StepAdd extends Component {
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

		<h1> Add A Step</h1>
		<input 
			placeholder="add a step"
			onChange={this.handleChange}
			/>
		</div>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(StepAdd);
