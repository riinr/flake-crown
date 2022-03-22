{
  description = ''Cross-platform OS keyring interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keyring-v0_2_1.flake = false;
  inputs.src-keyring-v0_2_1.owner = "iffy";
  inputs.src-keyring-v0_2_1.ref   = "v0_2_1";
  inputs.src-keyring-v0_2_1.repo  = "nim-keyring";
  inputs.src-keyring-v0_2_1.type  = "github";
  
  inputs."dbus".owner = "nim-nix-pkgs";
  inputs."dbus".ref   = "master";
  inputs."dbus".repo  = "dbus";
  inputs."dbus".dir   = "";
  inputs."dbus".type  = "github";
  inputs."dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-keyring-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}