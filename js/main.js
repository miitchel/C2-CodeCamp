let clock = document.getElementById( 'clock' );

let months = [ "januari", "februari", "maart", "april", "mei", "juni", "juli", "augustus", "september", "oktober", "november" ];

function getDateTime() {
  let now = new Date();
  
  let n = {
    date: now.getDate(),
    month: months[ now.getMonth() ],
    year: now.getFullYear(),
  };
  
  clock.innerHTML = Object.values( n ).join( ' ' ) + ', ' + now.toTimeString().substring(0, 8);
}

getDateTime();

setInterval( () => {
  getDateTime();
}, 1000 );
