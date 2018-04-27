import React, { Component} from 'react';
import { connect } from 'react-redux';
import styles from './menuIndex.css';

import FilterCloud from './FilterCloud.js'
import ModalToggler from './ModalToggler.js'

import {toggleMenuAction} from './../../redux/action'






class menuIndex extends Component {
	killTheDragGhost(e) {
		var canvas = document.createElementNS("http://www.w3.org/1999/xhtml","canvas");
		e.dataTransfer.setDragImage(canvas ,  1, 1);
		//if i did that is to make sure the dragEvent don't show a ghost of
		//element
		this.menuMStart(e)
	}


	getClientX (e) {
		var XPosition = e.clientX
		if ( e.clientX == null) {
			// if on mobile e.cleintX will return null so see if not ok
			XPosition = e.nativeEvent.changedTouches[0].clientX
		}
			
	
		return XPosition
	}


	
	menuMStart =  e  => { 
		this.initM = this.getClientX(e) 
	}	

	menuMEnd =  e  => {
		this.endM = this.getClientX(e)
		this.delta = (this.initM - this.endM)

		if ((this.delta**2)**0.5 < 60 ) {
			return  ; // return if delta too small
		} else if ((this.delta) > 0 ) {
			if (this.props.menuOpen) {
				toggleMenuAction()
			} // close if open	
		}else {
			if (!this.props.menuOpen) {
				toggleMenuAction()
			} //  open if close
		}
		// if the 'swipe' is of a minimum delta call toggle function if usefull
		// so if open and swipe left for example 
	}	

	render() {
		return (
			<div
				draggable
				
				onDoubleClick={toggleMenuAction}
				onDragStart={(e) => this.killTheDragGhost(e)}
				onTouchStart={(e) => this.menuMStart(e)}

				onDragEnd={(e) => this.menuMEnd(e)}
				onTouchEnd={(e) => this.menuMEnd(e)}
				
				
				className={[
					styles.container, 
					this.props.menuOpen ? styles.open : styles.close 
				].join(' ')}>
				<FilterCloud/>
				<ModalToggler/>
			</div>
		);
	}
}

function mapStateToProps(state) {
	return {
		menuOpen : state.menuOpen 
	};
}

export default connect(mapStateToProps)(menuIndex);
