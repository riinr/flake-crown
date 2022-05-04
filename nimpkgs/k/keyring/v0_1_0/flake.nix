{
  description = ''Cross-platform OS keyring interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keyring-v0_1_0.flake = false;
  inputs.src-keyring-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-keyring-v0_1_0.owner = "iffy";
  inputs.src-keyring-v0_1_0.repo  = "nim-keyring";
  inputs.src-keyring-v0_1_0.type  = "github";
  
  inputs."github-iffy-nim-dbus".owner = "nim-nix-pkgs";
  inputs."github-iffy-nim-dbus".ref   = "master";
  inputs."github-iffy-nim-dbus".repo  = "github-iffy-nim-dbus";
  inputs."github-iffy-nim-dbus".dir   = "master";
  inputs."github-iffy-nim-dbus".type  = "github";
  inputs."github-iffy-nim-dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-iffy-nim-dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-keyring-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}