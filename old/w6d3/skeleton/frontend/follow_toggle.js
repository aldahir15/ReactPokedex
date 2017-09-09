const APIUtil = require('./api_util.js');

class FollowToggle {
  constructor($el) {
    this.$el = $el;
    this.userId = this.$el.attr("data-user-id"); //should return user[id]
    this.followState = this.$el.attr("data-initial-follow-state");
    this.render();
    this.$el.on("click", this.handleClick.bind(this));
  }

  render() {
    if (this.followState === "unfollowed") {
      this.$el.text("Follow!");
      this.$el.prop("disabled", false);
    } else if (this.followState === "followed") {
      this.$el.text("Unfollow!");
      this.$el.prop("disabled", false);
    } else if (this.followState === "following" ||
               this.followState === "unfollowing") {
                 this.$el.prop("disabled", true);
               }
  }

  handleClick(event) {
    event.preventDefault();
    const state = this;
    if (this.followState === "unfollowed") {
      this.followState = "following";
      this.render();
      APIUtil.followUser(this.userId).then(() => {
        state.followState = "followed";
        state.render();
      });
    } else {
      this.followState = "unfollowing";
      this.render();
      APIUtil.unfollowUser(this.userId).then(() => {
        state.followState = "unfollowed";
        state.render();
      });
    }
  }
}



module.exports = FollowToggle;
