defmodule MyAppWeb.OverrideLive do
  use MyAppWeb, :live_view

  def render(assigns) do
      ~H"""
      <div class="text-xl text-red-500">Look ma, I'm a live view!</div>
      """
    end
end
