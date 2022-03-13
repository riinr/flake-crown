{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notificatcher-v0_2_0.flake = false;
  inputs.src-notificatcher-v0_2_0.owner = "PMunch";
  inputs.src-notificatcher-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-notificatcher-v0_2_0.repo  = "notificatcher";
  inputs.src-notificatcher-v0_2_0.type  = "github";
  
  inputs."dbus".owner = "nim-nix-pkgs";
  inputs."dbus".ref   = "master";
  inputs."dbus".repo  = "dbus";
  inputs."dbus".type  = "github";
  inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/pmunch/docopt.nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/pmunch/docopt.nim".ref   = "master";
  inputs."https://github.com/pmunch/docopt.nim".repo  = "https://github.com/pmunch/docopt.nim";
  inputs."https://github.com/pmunch/docopt.nim".type  = "github";
  inputs."https://github.com/pmunch/docopt.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/pmunch/docopt.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notificatcher-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notificatcher-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}