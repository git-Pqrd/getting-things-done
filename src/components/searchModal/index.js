import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './searchModal.css';
import { toggleSearchModal , toggleSearching} from './../../redux/action'


class searchModal extends Component {
	handleChangeInput (e) {
			toggleSearching(e.target.value) 
	}
	trapExitKeys(e) {
		if ((e.key === 'Enter') || (e.key === 'Escape')) {
		toggleSearchModal()
		}
	}
	render() {
		return (
		<div className={[
				styles.container,
				this.props.searchModalOpen ? styles.open : styles.close 
			].join(' ')}>
			
			<div 
				className={styles.container_blurry}
				onClick={toggleSearchModal}></div>
		
		
		
			<div
				className={styles.component}>
				<h3> 
					{(this.props.language === 'en') ? 'Searching for : ' : 'Recherche de : '} 
					
					{this.props.searching}
				</h3>
				<input
					onKeyDown={(e) => this.trapExitKeys(e)}
					onChange={(e) => this.handleChangeInput(e)}
					className={styles.inputBox}
					placeholder={(this.props.language === 'en') ? 'Search' : 'Chercher'}
							/>
					
			</div>
		
		</div>
		);
	}
}

function mapStateToProps(state) {
	return {
		searchModalOpen :  state.UI.searchModalOpen	,
		language		:  state.LOGIC.language,	
		searching		:  state.LOGIC.searching	
	};
}

export default connect(mapStateToProps)(searchModal);
