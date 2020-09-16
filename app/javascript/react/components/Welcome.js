import React, { useState, useEffect } from "react";
import MicroModal from 'react-micro-modal';

const Welcome = (props) => {
  const [open, setOpen] = useState(false)

  useEffect(() => {
    setOpen(true)
  }, []);



  return (
    <div>
      <MicroModal 
          containerStyles={{ background: '#fefefe' }}
          id="welcome-modal"
          open={open}
          handleClose={() => setOpen(false)}
          children={handleClose => <div onClick={handleClose}>
            <img src="/images/Rewind.png" id="welcome-rewind"/>
            <h3>Welcome to the TGIF Time Machine!</h3>
            <p>Use this website to view <i>actual</i> schedule data from TGIF from 1989-1996.</p>  
            <p>When combined with streaming services like Hulu.com you can recreate and watch a night of television from the past!</p>
            <p>To view schedule informaton simply select a year and press Go.</p>
            <p>To view details about an episode tap the episode name.</p>
            <p>If a Rerun ran on the Friday you are viewing tap the RERUN icon to have a rerun automatically suggested for you from past seasons & episodes!</p>
            <p>Have fun!</p>
            <h3 id="modal-close">Close</h3></div>}
        />
    </div>
  )
} 

export default Welcome 