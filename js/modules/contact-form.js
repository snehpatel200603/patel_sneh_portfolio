export function contactForm() {
  // data base connection request

  const form = document.querySelector("#contact-form");
  const feedBack = document.querySelector("#feedback");

  function regForm(event) {
    //console.log("called");
    event.preventDefault();
    const url = "adduser.php";
    const thisform = event.currentTarget;
    //console.log(thisform.elements.lname.value);
    const formdata =
      "firstname=" +
      thisform.elements.firstname.value +
      "&lastname=" +
      thisform.elements.lastname.value +
      "&email=" +
      thisform.elements.email.value +
      "&comments=" +
      thisform.elements.comments.value;
    console.log(formdata);

    fetch(url, {
      method: "POST",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body: formdata,
    })
      .then((response) => response.json())
      .then((responseText) => {
        console.log(responseText);
        feedBack.innerHTML = "";
        if (responseText.errors) {
          responseText.errors.forEach((error) => {
            const errorElement = document.createElement("p");
            errorElement.textContent = error;
            feedBack.appendChild(errorElement);
          });
        } else {
          form.reset();
          const messageElement = document.createElement("p");
          messageElement.textContent = responseText.message;
          feedBack.appendChild(messageElement);
        }
      })
      .catch((error) => {
        console.log(error);
        feedBack.innerHTML = "";
        const messageElement = document.createElement("p");
        messageElement.textContent =
          "Come on man get a new computer !! just kidding the form is not working";
      });
  }

  form.addEventListener("submit", regForm);
}