{
  description = ''Desktop notifications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notification-master.flake = false;
  inputs.src-notification-master.owner = "SolitudeSF";
  inputs.src-notification-master.ref   = "refs/heads/master";
  inputs.src-notification-master.repo  = "notification";
  inputs.src-notification-master.type  = "github";
  
  inputs."dbus".dir   = "nimpkgs/d/dbus";
  inputs."dbus".owner = "riinr";
  inputs."dbus".ref   = "flake-pinning";
  inputs."dbus".repo  = "flake-nimble";
  inputs."dbus".type  = "github";
  inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notification-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notification-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}