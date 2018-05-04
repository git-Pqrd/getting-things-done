import React, { Component} from 'react';
import styles from './ModalToggler.css';
import {connect } from 'react-redux'
import { toggleAddModal,  toggleSearchModal } from './../../redux/action';


let primaryStyleComponent = {
	backgroundColor : '#2790CA',
	color : '#D7DDFF',
	borderColor : '#ddd',
	fontFamily : 'Raleway, sans-serif'
}

class ModalToggler extends Component {
	
	render() {
		return (
			<div className={styles.container}>

				<div className={styles.icon_modal}	>
					<a 
						style={primaryStyleComponent}
						onClick={toggleAddModal}>
						{ this.props.language === 'fr' ? 'Ajouter' : 'Add'  }	
					</a>
				</div>	
				
				<div className={styles.icon_modal}>
					<a 
						style={primaryStyleComponent}
						onClick={toggleSearchModal}>
						{ this.props.language === 'fr' ? 'Chercher' : 'Search'  }	
					</a>
				</div>	
				
			</div>
		);
	}
}

const mapStateToProps = state => { 
	return 	{
		language : state.LOGIC.language
	}
}



export default connect(mapStateToProps)(ModalToggler);
