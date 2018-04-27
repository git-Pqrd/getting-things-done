import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './ModalToggler.css';

let primaryStyleComponent = {
	backgroundColor : '#2790CA',
	color : '#D7DDFF',
	borderColor : '#ddd',
	fontFamily : 'Raleway, sans-serif'
}

class ModalToggler extends Component {
	tester () {
		console.log('value');
	}
	render() {
		return (
			<div className={styles.container}>

				<div className={styles.icon_modal}	>
					<a 
						style={primaryStyleComponent}
						onClick={this.tester}>
						{}	Add
					</a>
				</div>	
				
				<div className={styles.icon_modal}>
					<a 
						style={primaryStyleComponent}
						onClick={this.tester}>
						{} Search	
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
