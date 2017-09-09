const FollowToggle = require('./follow_toggle.js');
const UsersSearch = require('./users_search.js');


$( () => {
  const $followToggles = $(".follow-toggle");
  $followToggles.each( function(index, el) {

    new FollowToggle($(el));
  });

  const $usersSearch = $(".users-search");
  $usersSearch.each( function(index, el) {
    new UsersSearch($(el));
  });
});
