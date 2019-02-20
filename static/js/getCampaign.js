var request = new XMLHttpRequest();

request.open('GET', 'http://stolenbyte.kr:8080/api/campaign/get/1/', true);

request.onload = function() {
  var campaignData = JSON.parse(this.response);

  if (request.status >= 200 && request.status < 400) {
    campaignData.display_stands.forEach(display_stands => {
      console.log(display_stands.name);
    });
  } else {
    console.log('json error');
  }
}

request.send();