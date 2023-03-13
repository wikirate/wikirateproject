// document.addEventListener('click', function (event){
//     alert('Oh you clicked me!')
// })

function trigger_endorsement_modal(id) {
    document.querySelector('[endorsement-card-id="' + id + '"]').getElementsByTagName("a")[0].click()
}