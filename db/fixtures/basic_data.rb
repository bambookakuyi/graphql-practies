# frozen_string_literal: true

Post.seed_once(:id,
  { id: 1, title: "First Post", rating: 1 },
  { id: 2, title: "Second Post", rating: 2 }
)

Comment.seed_once(:id,
  { id: 1, post_id: 1, desc: "First Comment" },
  { id: 2, post_id: 1, desc: "Second Comment" }
)
