import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './ModalToggler.css';

class ModalToggler extends Component {
	tester () {
		console.log('value');
	}
	render() {
		return (
			<div className={styles.container}>

				<div className={styles.icon_modal}	>
					<a onClick={this.tester}>
						{}	Add
					</a>
				</div>	
				
				<div className={styles.icon_modal}>
					<a onClick={this.tester}>
						{} 'Search'	
					</a>
				</div>	
				
			</div>
		);
	}
}

function mapStateToProps(state) {
	return {};
}

export default connect(mapStateToProps)(ModalToggler);
