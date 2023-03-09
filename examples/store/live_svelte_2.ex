defmodule ExamplesWeb.LiveSvelte2 do
  use ExamplesWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="mt-2 flex flex-col">
      <%!-- Both work --%>
      <.link navigate={~p"/svelte-1"}>svelte-1 with navigate</.link>
      <.link patch={~p"/svelte-1"}>svelte-1 with patch</.link>
    </div>
    <.live_component module={LiveSvelte} name="StoreExample2" id="id" />
    """
  end
end
