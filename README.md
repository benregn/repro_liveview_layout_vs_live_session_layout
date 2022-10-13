# LiveView :layout VS live_session :layout

## Bug

It looks like `:layout` option for `live_session` is supposed to override the `:layout` option passed to use `Phoenix.LiveView`. I can see the content of my `live_session` `:layout` flash before it's replaced by the `Phoenix.LiveView` `:layout`.

### Reproduction

1. Navigate to <http://localhost:4000/override>
2. Observe that, for a very short time, the text "I'm an override layout from a live_session!" will be shown
3. Then the layout from `use Phoenix.LiveView, layout: {MyAppWeb.LayoutView, "app.html"}` takes over
