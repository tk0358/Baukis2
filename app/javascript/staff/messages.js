function update_number_of_unprocessed_messages() {
  const elem = $("#number-of-unprocessed-messages")
  $.get(elem.data("path"), (data) => {
    if (data === "0") elem.text("")
    else elem.text("(" + data + ")")
  })
  .fail(() => window.location.href = "/login")
}



$(document).ready(() => {
  if ($("#number-of-unprocessed-messages").length)
    window.setInterval(update_number_of_unprocessed_messages, 1000 * 60)
})

// function update_num_of_unprocessed_messages() {
//   const elem = document.getElementById('number-of-unprocessed-messages');
//   const path = elem.dataset.path;
//   console.log(path)
//   const xhr = new XMLHttpRequest()
//   xhr.open('GET', path, true)
//   xhr.onload = function() {
//     console.log("aaaa");
//     console.log(xhr.status);
//     if (xhr.status == 200) {
//       const data = xhr.responseText
//       if(data === "0") elem.innerText = ""
//       else elem.innerText = "(" + data + ")"
//     } else {
//       console.error(xhr.statusText)
//     }
//   }
//   xhr.send();
// }

// window.onload = function() {
//   window.setInterval(update_num_of_unprocessed_messages, 1000 * 20);
// }