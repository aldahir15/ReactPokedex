const APIUtil = {
  followUser: (id) => (
    $.ajax({
      method: "POST",
      url: `/users/${id}/follow`,
      dataType: "JSON"
    })
  ),
  unfollowUser: (id) => (
    $.ajax({
      method: "DELETE",
      dataType: "JSON",
      url: `/users/${id}/follow`
    })
  )
};

module.exports = APIUtil;
