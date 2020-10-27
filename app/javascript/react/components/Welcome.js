import React, { useState, useEffect } from "react";
import MicroModal from 'react-micro-modal';

const Welcome = (props) => {
  const [open, setOpen] = useState(false)

  var storedValues = JSON.parse(localStorage.getItem("TGIFLocalStorageValues"));

  useEffect(() => {
    if (storedValues === "visited") {
      setOpen(false)
    }
    else {
      setOpen(true)
      localStorage.setItem("TGIFLocalStorageValues", JSON.stringify("visited"))
      }
  }, []);

  return (
    <div>
      <MicroModal 
          containerStyles={{ background: '#fefefe' }}
          id="welcome-modal"
          open={open}
          handleClose={() => setOpen(false)}
          children={handleClose => <div onClick={handleClose}>
            <img src="/images/RewindIcon.png" id="welcome-rewind"/>
            <h3>Welcome to the <span id="welcome-tgif-name">TGIF</span> Time Machine!</h3>
            <p>The internet's first and only source of historical schedule data from TGIF's original run from 1989-2000.</p>  
            <p>When combined with streaming services like Hulu.com you can recreate and watch a night of television from the past!</p>
            <ol>
            <li>To view schedule informaton simply select a year and press Go.</li>
            <li>To view details about an episode tap the episode name.</li>
            <img src="/images/Welcome Episode Preview.png" id="welcome-episode-preview" />
            <li>If a Rerun ran on the Friday you are viewing tap the<i className="fi-refresh" /> icon to have a rerun automatically suggested for you.</li>
            <li>Have fun!</li>
            </ol>
            <h3 id="modal-close">Close</h3></div>}
        />
    </div>
  )
} 

export default Welcome 