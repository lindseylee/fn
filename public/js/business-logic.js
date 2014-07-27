(function() {
  var BusinessLogic = function() {
    window.qualities;
    window.choosenQualities = [];

    $.get("/api/qualities", function(data) {
      window.qualities = data;
      ui.renderButtons();
    });

  };

  window.bl = new BusinessLogic();
})();

$(document).foundation({
  dropdown: {
    // specify the class used for active dropdowns
    active_class: 'open'
  }
});
