{
  description = ''Cap'n Proto bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-capnp-master.flake = false;
  inputs.src-capnp-master.ref   = "refs/heads/master";
  inputs.src-capnp-master.owner = "zielmicha";
  inputs.src-capnp-master.repo  = "capnp.nim";
  inputs.src-capnp-master.type  = "github";
  
  inputs."collections".owner = "nim-nix-pkgs";
  inputs."collections".ref   = "master";
  inputs."collections".repo  = "collections";
  inputs."collections".dir   = "v0_5_2";
  inputs."collections".type  = "github";
  inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-capnp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-capnp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}