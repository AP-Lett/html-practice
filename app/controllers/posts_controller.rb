class PostsController < ApplicationController
  def index
    @posts = [
      { id: 1, title: "First Post", content: "Welcome to my blog!", author: "Alice" },
      { id: 2, title: "Learning Rails", content: "Today I learned about MVC.", author: "Bob" },
      { id: 3, title: "Full-Stack Development", content: "Rails makes it easy!", author: "Charlie" }
    ]
  end
end
