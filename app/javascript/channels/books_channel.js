import consumer from "./consumer"

jQuery(document).on('turbolinks:load', function() {
  const comments = $('#comments');
    const BooksChannel = consumer.subscriptions.create({
      channel: "BooksChannel",
      book_id: comments.data('book-id') 
    }, {
    connected() {},
    disconnected() {},
    received(data) {
      return comments.append(data['comment']);
    },
    send_comment(comment, book_id) {
      return this.perform('send_comment', {comment, book_id});
    }
  }
    );
  return $('#new_comment').submit(function(e) {
    const $this = $(this);
    const textarea = $this.find('#comment_content');
    if ($.trim(textarea.val()).length > 1) {
      BooksChannel.send_comment(textarea.val(),
      comments.data('book-id'));
      textarea.val('');
    }
    e.preventDefault();
    return false;
  });
}); 