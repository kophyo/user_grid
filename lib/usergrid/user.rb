module Usergrid
  class Client

    def users
      get("/users")
    end

    def create_user params
      post("/users", params)
    end

  end
end
