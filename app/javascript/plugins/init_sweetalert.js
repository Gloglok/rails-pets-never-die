import swal from 'sweetalert';

const initSweetalert = (selector) => {
  const accept = document.querySelectorAll(selector[0]);
  const refuse = document.querySelectorAll(selector[1]);
  const booking = document.querySelectorAll(selector[2]);
  const confirm = document.querySelectorAll(selector[3]);

  if (accept) { // protect other pages
    Array.from(accept).forEach((button) => button.addEventListener('click', () => {
      swal({
        title: "Accepter, veuillez confirmer...",
        text: "Cette action est irréversible",
        icon: "info",
        buttons: true
      }).then((doAction) => {
        if (doAction) {
          swal("Félicitation vous avez accepté!", {
            icon: "success",
          }).then(() => {
            location.reload();
          });
        } else {
          swal("Vous pouvez toujours réessayer!", {
            icon: 'error',
          });
        }})
    }));
  }

  if (refuse) { // protect other pages
    Array.from(refuse).forEach((button) => button.addEventListener('click', () => {
      swal({
        title: "Refuser, êtes-vous sûre de vouloir continuer?",
        text: "Cette action est irréversible",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      }).then((doAction) => {
        if (doAction) {
          swal("Terminé", {
            icon: "success",
          }).then(() => {
            location.reload();
          });
        } else {
          swal("Vous pouvez toujours réessayer!", {
            icon: 'error',
          });
        }})
    }));
  }

  if (booking) { // protect other pages
    Array.from(booking).forEach((button) => button.addEventListener('click', () => {
      swal({
        title: "Veuillez confirmer votre réservation..",
        text: "Le délai d'attente varie en 2 et 5 jours ouvrable",
        icon: "info",
        buttons: true,
      }).then((doAction) => {
        if (doAction) {
          swal("Merci, nous allons traiter votre demande de réservation", {
            icon: "success",
          })
        } else {
          swal("N'hésitez pas à revenir!", {
            icon: 'info',
          });
        }})
    }));
  }

  if (confirm) { // protect other pages
    Array.from(confirm).forEach((button) => button.addEventListener('click', () => {
      swal({
        title: "Voulez-vous continuer?",
        icon: "info",
        buttons: true,
      }).then((doAction) => {
        if (doAction) {
          swal("Terminé", {
            icon: "success",
          })
        } else {
          swal("N'hésitez pas à revenir!", {
            icon: 'info',
          }).then(() => {
            location.reload();
          });
        }})
    }));
  }
};

export { initSweetalert };
