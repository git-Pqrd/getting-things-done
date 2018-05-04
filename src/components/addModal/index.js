import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './addModal.css';
import {toggleAddModal} from './../../redux/action/index.js';
import  TaskAdd from './TaskAdd.js'
import  StepAdd from './StepAdd.js'
import  FilterAdd from './FilterAdd.js'


class AddModal extends Component {
	render() {
		return (
		<div
			className={[ styles.container , 
					this.props.addModalOpen ? 
					'' : styles.close ].join(' ')}
			>
				
			<div 
				onClick={toggleAddModal}
				onTouchEnd={toggleAddModal}
				className={styles.container_blurry}>
			</div>
					
				<TaskAdd/>
				<FilterAdd/>
				<StepAdd/>
		

		</div>
		);
	}
}

function mapStateToProps(state) {
	return {
		addModalOpen  : state.UI.addModalOpen
	};
}

export default connect(mapStateToProps)(AddModal);
