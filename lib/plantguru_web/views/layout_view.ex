defmodule PlantguruWeb.LayoutView do
  use PlantguruWeb, :view

  def render_shared(template, assigns \\ []) do
    render(PlantguruWeb.SharedView, template, assigns)
  end
end
