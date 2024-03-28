class Page {
  author = document.getElementById("author");
  logo = document.getElementById("logo");
  favicon = document.getElementById("favicon");
  menu = document.getElementById("menu");
  menu = document.getElementById("menu-mobile");
  emphasisBanner1 = document.getElementById("emphasis-banner1");
  emphasisName = document.getElementById("emphasis-name");
  emphasisYear = document.getElementById("emphasis-year");
  emphasisClassification = document.getElementById("emphasis-classification");
  emphasisDuration = document.getElementById("emphasis-duration");
  emphasisDescription = document.getElementById("emphasis-description");
  movies = document.getElementById("movies");

  constructor(jsonPath) {
    fetch(jsonPath)
      .then((response) => {
        return response.json();
      })
      .then((data) => {
        console.log(data);
        document.title = data.systemSettings.name;
        this.favicon.setAttribute('href', data.systemSettings.favicon);
        this.logo.setAttribute('src', data.systemSettings.logo);
        this.author.innerHTML = data.systemSettings.author;
        console.log(data.systemSettings.author);

        //menu
        var listOfMenu = "";
        var listOfMobile = "";

         for(var m = 0; m < data.menu.lenght; m++){
             if(m == 0){
                var listOfMenu += '<li class="nav-iten" <a href="#" class="nav-link text-reset d-xl-flex active">'+data.menu[m].name+'</a></li>';
             }else{
                var listOfMenu += '<li class="nav-iten" <a href="#" class="nav-link text-reset d-xl-flex ">'+data.menu[m].name+'</a></li>';    
             }
         }

         this.menu.innerHTML = listOfMenu;
      });
  }
}

new Page("database.json");
