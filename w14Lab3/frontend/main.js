document.addEventListener("DOMContentLoaded", () => {
  const select = document.getElementById("movie-select");
  const card = document.getElementById("movie-card");

  const urlBack = "http://localhost:8080/movies";

  // Cargar los títulos al cargar la página
  fetch(urlBack + "/titles")
    .then(res => res.json())
    .then(data => {
      data.forEach(movie => {
        const option = document.createElement("option");
        option.value = movie.id;
        option.textContent = movie.title;
        select.appendChild(option);
      });
    })
    .catch(err => console.error("Error al cargar los títulos:", err));

  // Cuando se selecciona una película
  select.addEventListener("change", function () {
    const movieId = this.value;

    if (movieId) {
      fetch(urlBack + `/${movieId}`)
        .then(res => res.json())
        .then(movie => {
          document.getElementById("movie-title").textContent = movie.title;
          document.getElementById("movie-year").textContent = movie.year;
          document.getElementById("movie-boxoffice").textContent = movie.box_office;
          document.getElementById("movie-genre").textContent = movie.genre;
          document.getElementById("movie-poster").src = movie.poster
                                                        ? `img/${movie.poster}`
                                                        : 'img/poster404.jpg';

          card.classList.remove("hidden");
        })
        .catch(err => {
          console.error("Error al obtener los detalles:", err);
          card.classList.add("hidden");
        });
    } else {
      card.classList.add("hidden");
    }
  });
});
