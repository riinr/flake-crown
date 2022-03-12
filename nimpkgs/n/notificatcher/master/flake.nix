{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notificatcher-master.flake = false;
  inputs.src-notificatcher-master.owner = "PMunch";
  inputs.src-notificatcher-master.ref   = "refs/heads/master";
  inputs.src-notificatcher-master.repo  = "notificatcher";
  inputs.src-notificatcher-master.type  = "github";
  
  inputs."dbus".dir   = "nimpkgs/d/dbus";
  inputs."dbus".owner = "riinr";
  inputs."dbus".ref   = "flake-pinning";
  inputs."dbus".repo  = "flake-nimble";
  inputs."dbus".type  = "github";
  inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/pmunch/docopt.nim".dir   = "nimpkgs/h/https://github.com/pmunch/docopt.nim";
  inputs."https://github.com/pmunch/docopt.nim".owner = "riinr";
  inputs."https://github.com/pmunch/docopt.nim".ref   = "flake-pinning";
  inputs."https://github.com/pmunch/docopt.nim".repo  = "flake-nimble";
  inputs."https://github.com/pmunch/docopt.nim".type  = "github";
  inputs."https://github.com/pmunch/docopt.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/pmunch/docopt.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notificatcher-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notificatcher-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}