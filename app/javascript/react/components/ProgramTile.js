import React from "react";
import MicroModal from 'react-micro-modal';


const ProgramTile = ({ getProgramData, setProgramData, programIndex, alternatingClass, episodes, week_num, friday_date, slot_8pm, slot_830pm, slot_9pm, slot_930pm }) => {

let timeArray = [slot_8pm, slot_830pm, slot_9pm, slot_930pm]

if (!episodes.some(episode => episode.formatting === "Rerun")) {
  episodes.sort(function(a, b){
    return timeArray.indexOf(a.show_name) - timeArray.indexOf(b.show_name)
  })
}

for(var i=0; i < 4; i++) {
  if  (typeof episodes[i] === 'undefined' || !(episodes.some(episode => episode.show_name === timeArray[i])))
    {
      episodes.splice(i, 0, {name: "Rerun"})
      episodes[i].formatting = "Rerun"
      episodes[i].synopsis = "A rerun aired on this date."
      episodes[i].modal_show_name = timeArray[i]
      episodes[i].show_name = timeArray[i]
      let index = i
      let show_id = getProgramData.shows.find(element => element.name === timeArray[i]).id
      episodes[i].show_id = show_id
      episodes[i].modal_season_ep = "Rerun"
      episodes[i].rerun_button = 
        <i className="fi-refresh" title="Get a suggested rerun" onClick={() => suggestRerun(show_id, friday_date, index)}>
        </i>
    }
    else {
      if (episodes[i].formatting != "Rerun" ) {
        if (episodes[i].name.length > 34) { episodes[i].formatting = `${episodes[i].name.substring(0,32)}... - S${episodes[i].season}E${episodes[i].episode_num}`}
        else {
          episodes[i].formatting = `${episodes[i].name} - S${episodes[i].season}E${episodes[i].episode_num}`
        }
        episodes[i].modal_show_name = `${episodes[i].show_name} - ${episodes[i].name}`
        episodes[i].modal_season_ep = `Season ${episodes[i].season} - Episode ${episodes[i].episode_num}`
        episodes[i].rerun_button = ""
      }
    }
  }

function suggestRerun(show_id, friday_date, episode_array_index) {
  fetch(`/api/v1/episodes/${show_id}/rerun`, {
    method: "POST",
    credentials: "same-origin",
    body: JSON.stringify(friday_date),
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
    let episode_data = data.rerunEpisode
    let rerun_episode_name = episode_data.name
    rerun_episode_name = "(Suggested Rerun) " + rerun_episode_name
    episode_data.name = rerun_episode_name
    episodes.splice(episode_array_index, 1, episode_data)
    const copyData = {...getProgramData}
    copyData.episodes[programIndex] = episodes
    setProgramData(copyData)
  })
  .catch(error => console.error(`Error in fetch: ${error.message}`))
}

const formatDate = function(input) {
  const pattern = /(\d{4})\-(\d{2})\-(\d{2})/;
  if (!input || !input.match(pattern)) {
    return null;
  }
  return input.replace(pattern, '$2/$3/$1');
};

let formattedDate = formatDate(friday_date)

  return (
    <div className="cell" id="week-tile">
      <div className="card" id={alternatingClass}>
      <h5>Friday {formattedDate}</h5>
        <div id="program-block-1" className="time-show">8:00 - {slot_8pm}</div>
        <div id="program-block-1">
          <MicroModal 
          containerStyles={{ background: '#24c4db' }}
          trigger={handleOpen => <div onClick={handleOpen} className="episode-name">{episodes[0].formatting}</div>}
          children={handleClose => <div onClick={handleClose}>
            <h3>{episodes[0].modal_show_name}</h3>
            {episodes[0].modal_season_ep}<br/>
            {episodes[0].synopsis}<br/>
            <h2>Close</h2></div>}
        />{episodes[0].rerun_button}</div>
        <div id="program-block-2" className="time-show">8:30 - {slot_830pm}</div>
        <div id="program-block-2">
          <MicroModal 
          containerStyles={{ background: '#24c4db' }}
          trigger={handleOpen => <div onClick={handleOpen} className="episode-name">{episodes[1].formatting}</div>}
          children={handleClose => <div onClick={handleClose}>
            <h3>{episodes[1].modal_show_name}</h3>
            {episodes[1].modal_season_ep}<br/>
            {episodes[1].synopsis}<br/>
            <h2>Close</h2></div>}
        />{episodes[1].rerun_button}</div>
        <div id="program-block-1" className="time-show">9:00 - {slot_9pm}</div>
        <div id="program-block-1">
          <MicroModal 
          containerStyles={{ background: '#24c4db' }}
          trigger={handleOpen => <div onClick={handleOpen} className="episode-name">{episodes[2].formatting}</div>}
          children={handleClose => <div onClick={handleClose}>
            <h3>{episodes[2].modal_show_name}</h3>
            {episodes[2].modal_season_ep}<br/>
            {episodes[2].synopsis}<br/>
            <h2>Close</h2></div>}
        />{episodes[2].rerun_button}</div>
        <div id="program-block-2" className="time-show">9:30 - {slot_930pm}</div>
        <div id="program-block-2">
          <MicroModal 
          containerStyles={{ background: '#24c4db' }}
          trigger={handleOpen => <div onClick={handleOpen} className="episode-name">{episodes[3].formatting}</div>}
          children={handleClose => <div onClick={handleClose}>
          <h3>{episodes[3].modal_show_name}</h3>
          {episodes[3].modal_season_ep}<br/>
          {episodes[3].synopsis}<br/>
          <h2>Close</h2></div>}
        />{episodes[3].rerun_button}</div>
      </div>
    </div>
  );
};

export default ProgramTile
