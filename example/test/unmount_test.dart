import "dart:html";

import "package:react/react.dart" as react;
import "package:react/react_dom.dart" as react_dom;
import "package:react/react_client.dart";

var simpleComponent = react.registerComponent(() => new SimpleComponent());

class SimpleComponent extends react.Component {
  componentWillMount() => print("mount");

  componentWillUnmount() => print("unmount");

  render() => react.div({}, [
        "Simple component",
      ]);
}

void main() {
  print("What");
  setClientConfiguration();
  var mountedNode = querySelector('#content');

  querySelector('#mount')
      .onClick
      .listen((_) => react_dom.render(simpleComponent({}), mountedNode));

  querySelector('#unmount')
      .onClick
      .listen((_) => react_dom.unmountComponentAtNode(mountedNode));
}
