

document.addEventListener('turbo:load', loadNewsLetterData)

function loadNewsLetterData () {
    listen('click', '.delete-subscriber-btn', function (event) {
        let subscriberId = $(event.currentTarget).data('id')
        console.log(subscriberId)
        deleteItem(route('news-letter.destroy', subscriberId), Lang.get('messages.subscriber'))
    })
}
