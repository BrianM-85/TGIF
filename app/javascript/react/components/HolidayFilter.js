import React, { useState, useEffect } from "react";

const HolidayFilter = (props) => {
  const [getHolidayData, setHolidayData] = useState()

  useEffect(() => {
    fetch("/api/v1/episodes/holiday")
      .then((response) => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
          throw error;
        }
      })
      .then((response) => response.json())
      .then((body) => {
        let data = body;
        debugger
        let episodes = data.holidayEpisodes
        setHolidayData(episodes);
        debugger
      })
      .catch((error) => console.error(`Error in fetch: ${error.message}`));
  }, []);

  return (
    <div id="holiday-filter"> 
    Hello from Holiday filters.
    </div>
  )
}


export default HolidayFilter;