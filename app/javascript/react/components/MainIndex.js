import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import ProgramTile from "./ProgramTile";
import Welcome from "./Welcome"

const MainIndex = (props) => {
  const [getProgramData, setProgramData] = useState({
    episodes: [],
    weeks: [],
    shows: [],
  })

  const [getYear, setYear] = useState("None");

  function handleYearChange(event) {
    setYear(event.target.value);
  }
  
  const handleSubmit = () => {
    event.preventDefault();
    fetch(`/api/v1/program_years`, {
      method: "POST",
      credentials: "same-origin",
      body: JSON.stringify(getYear),
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    })
    .then(response => {
      if (response.ok) {
        return response
      } else {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      }
    })
    .then(response => response.json())
    .then(body => {
      let data = body;
      setProgramData({...getProgramData,
        episodes: data.episodeData,
        weeks: data.weekData,
        shows: data.showsData,
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  };

  const selectedWeeks = getProgramData.weeks.map((week) => {
    let alternatingClass="card-odd"
    if(week.id%2 == 0) {
      alternatingClass="card-even"
    }

    let index = week.week_num - 1
    let episodes = []
    if (getProgramData.episodes != null) 
      {
      episodes = getProgramData.episodes[index]
      }
    return (
      <ProgramTile
      key={week.id}
      programIndex={index}
      episodes={episodes}
      week_num={week.week_num}
      friday_date={week.friday_date}
      slot_8pm={week.slot_8pm}
      slot_830pm={week.slot_830pm}
      slot_9pm={week.slot_9pm}
      slot_930pm={week.slot_930pm}
      alternatingClass={alternatingClass}
      setProgramData={setProgramData}
      getProgramData={getProgramData}
      />
    );
  });

  return (
    <div>   
      <Welcome />
      <img src="/images/Small TV Purple.png" id="small-tv-main-index"/>
      <label>
        <form id="yearSelect" onSubmit={handleSubmit}>
          <select defaultValue="none" onChange={handleYearChange} id="year-select">
            <option value="none">--Select a Year--</option>
            <option value="1" >Fall 1989 - Spring 1990</option>
            <option value="2" >Fall 1990 - Spring 1991</option>
            <option value="3" >Fall 1991 - Spring 1992</option>
            <option value="4" >Fall 1992 - Spring 1993</option>
            <option value="5" >Fall 1993 - Spring 1994</option>
            <option value="6" >Fall 1994 - Spring 1995</option>
            <option value="7" >Fall 1995 - Spring 1996</option>
            <option value="8" >Fall 1996 - Spring 1997</option>
            <option value="9" >Fall 1997 - Spring 1998</option>
            <option value="10" >Fall 1998 - Spring 1999</option>
            <option value="11" >Fall 1999 - Spring 2000</option>
          </select>
          <button type="submit" className="button secondary" value="Submit" form="yearSelect">Go</button>
        </form>
      </label>
          <div className="grid-container">
            <div className="grid-x grid-margin-x small-up-1 medium-up-2 large-up-3">
              {selectedWeeks}
            </div>
          </div>
      </div>
  )
}


export default MainIndex;