# flutter_provider_type

A new Flutter project.

## Getting Started
Provider is the most basic of the Provider widget types. You can use it to provide a value (usually a data model object) to anywhere in the widget tree.
However, it won’t help you update the widget tree when that value changes.

The UI was built with the “Hello” text that came from the model.
Pressing the “Do something” button will cause an event to happen on the model.
However, even though the model’s data got changed, the UI wasn’t rebuilt because the Provider widget doesn’t listen for changes in the values it provides.
