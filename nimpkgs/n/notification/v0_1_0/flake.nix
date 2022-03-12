{
  description = ''Desktop notifications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notification-v0_1_0.flake = false;
  inputs.src-notification-v0_1_0.owner = "SolitudeSF";
  inputs.src-notification-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-notification-v0_1_0.repo  = "notification";
  inputs.src-notification-v0_1_0.type  = "github";
  
  inputs."https://github.com/solitudesf/nim-dbus".dir   = "nimpkgs/h/https://github.com/solitudesf/nim-dbus";
  inputs."https://github.com/solitudesf/nim-dbus".owner = "riinr";
  inputs."https://github.com/solitudesf/nim-dbus".ref   = "flake-pinning";
  inputs."https://github.com/solitudesf/nim-dbus".repo  = "flake-nimble";
  inputs."https://github.com/solitudesf/nim-dbus".type  = "github";
  inputs."https://github.com/solitudesf/nim-dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/solitudesf/nim-dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman".dir   = "nimpkgs/i/imageman";
  inputs."imageman".owner = "riinr";
  inputs."imageman".ref   = "flake-pinning";
  inputs."imageman".repo  = "flake-nimble";
  inputs."imageman".type  = "github";
  inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notification-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notification-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}