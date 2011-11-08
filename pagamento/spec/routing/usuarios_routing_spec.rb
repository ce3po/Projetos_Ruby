require "spec_helper"

describe UsuariosController do
  describe "routing" do

    it "routes to #index" do
      get("/usuarios").should route_to("usuarios#index")
    end

    it "routes to #new" do
      get("/usuarios/new").should route_to("usuarios#new")
    end

    it "routes to #show" do
      get("/usuarios/1").should route_to("usuarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usuarios/1/edit").should route_to("usuarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usuarios").should route_to("usuarios#create")
    end

    it "routes to #update" do
      put("/usuarios/1").should route_to("usuarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usuarios/1").should route_to("usuarios#destroy", :id => "1")
    end

  end
end
